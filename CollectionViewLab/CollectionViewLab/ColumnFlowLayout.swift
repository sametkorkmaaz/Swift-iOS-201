//
//  ColumnFlowLayout.swift
//  CollectionView
//
//  Created by Samet Korkmaz on 22.03.2024.
//

import UIKit

class ColumnFlowLayout: UICollectionViewFlowLayout {

    let sutunSayisi : Int
    let yukseklikOrani : CGFloat = (3.0 / 2.0)
    
    init(sutunSayisi: Int, minSutunAraligi : CGFloat = 0, minSatirAraligi : CGFloat = 0) {
        self.sutunSayisi = sutunSayisi
        super.init()
        
        self.minimumInteritemSpacing = minSutunAraligi
        self.minimumLineSpacing = minSatirAraligi
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
        
        guard let collectionView = collectionView else {return}
        
        let araliklar = collectionView.safeAreaInsets.left + collectionView.safeAreaInsets.right + minimumLineSpacing * CGFloat(sutunSayisi - 1)
        
        let elemanGenisliği = ((collectionView.bounds.size.width - araliklar ) / CGFloat(sutunSayisi)).rounded(.down)
        let elemanYüksekigi = elemanGenisliği * yukseklikOrani
        
        itemSize = CGSize(width: elemanGenisliği, height: elemanYüksekigi)
        
    }
    
    
}
