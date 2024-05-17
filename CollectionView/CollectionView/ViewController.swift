//
//  ViewController.swift
//  CollectionView
//
//  Created by Samet Korkmaz on 22.03.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var CollectionView: UICollectionView!
    var liste = ["E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10","E1","E2","E3","E4","E5","E6","E7","E8","E9","E10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionView.register(UINib(nibName: "CollectionViewCell_Hucreler", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_Hucreler")
        
        CollectionView.collectionViewLayout = ColumnFlowLayout(sutunSayisi: 4, minSutunAraligi: 10, minSatirAraligi: 20)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return liste.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_Hucreler", for: indexPath) as! CollectionViewCell_Hucreler
        cell.LBL_Hucre.text = liste[indexPath.row]
        return cell
    }

}

