//
//  ViewController.swift
//  CollectionViewLab
//
//  Created by Samet Korkmaz on 22.03.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    var geziListesi : [Gezi] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var g = Gezi()
        g.gunNumara = 1
        g.imageAdi = "anıtkabir"
        g.konum = "Ankara"
        g.aciklama = "Türkiyenin başkenti.Türkiyenin başkenti.Türkiyenin başkenti.Türkiyenin başkenti."
        
        geziListesi.append(g)
        
        g = Gezi()
       g.gunNumara = 2
       g.imageAdi = "atakule"
       g.konum = "Ankara"
       g.aciklama = "Türkiyenin en uzun kulesi.Türkiyenin en uzun kulesi.Türkiyenin en uzun kulesi.Türkiyenin en uzun kulesi."
       
       geziListesi.append(g)
        
        g = Gezi()
       g.gunNumara = 3
       g.imageAdi = "kuguluPark"
       g.konum = "Ankara"
       g.aciklama = "TKuğulu bir park.TKuğulu bir park.TKuğulu bir park.TKuğulu bir park."
       
       geziListesi.append(g)
        
        collectionViewOutlet.register(UINib(nibName: "GezilecekYerlerCell", bundle: nil), forCellWithReuseIdentifier: "GezilecekYerlerCell")
        collectionViewOutlet.collectionViewLayout = ColumnFlowLayout(sutunSayisi: 1, minSutunAraligi: 10, minSatirAraligi: 20)
        
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return geziListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GezilecekYerlerCell", for: indexPath) as! GezilecekYerlerCell
        
        let g = geziListesi[indexPath.row]
        
        cell.gunNoLabel.text = "Gün NO:\(String(describing: g.gunNumara!))"
        cell.image_Gezi.image = UIImage(named: g.imageAdi ?? "A")
        cell.konumLabel.text = g.konum
        cell.aciklamaLabel.text = g.aciklama
        
        return cell
    }
}

