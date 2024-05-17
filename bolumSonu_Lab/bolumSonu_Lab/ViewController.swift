//
//  ViewController.swift
//  bolumSonu_Lab
//
//  Created by Samet Korkmaz on 24.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var searchBar_Kontrol: UISearchBar!
    @IBOutlet weak var tableView_Kontrol: UITableView!
    
    var anaListe : [Makale] = []
    var yuklenmisListe : [Makale] = []
    var filtreliListe : [Makale] = []
    
    var sayfa = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var m : Makale
        
        for i in 0..<105 {
            m = Makale(baslik: "Başlık\(i)", kisaAciklama: "Kısa Açıklama\(i)", aciklama: "Uzun açıklama\(i)", sayfaSayisi: i)
            anaListe.append(m)
            
            if (i<20){
                yuklenmisListe.append(m)
            }
        }
        
        filtreliListe.append(contentsOf: anaListe)
        tableView_Kontrol.reloadData()
        
    }
        // tableview satır sayısı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yuklenmisListe.count
    }
    // SATIRLARIN İÇERİKLERİ
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.Baslik_LBL.text = yuklenmisListe[indexPath.row].baslik
        cell.kisaAciklama_Lbl.text = yuklenmisListe[indexPath.row].kisaAciklama
        
        return cell
    }
        // Scroll aşağı kaydırdıkça yükleme
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if((scrollView.contentOffset.y + scrollView.frame.size.height)) > (scrollView.contentSize.height * 0.9) {
            ElemanEkle()
        }
    }
      
    func ElemanEkle() {
        if (((sayfa + 1)*20) < anaListe.count){
            for i in ((sayfa + 1)*20)..<((sayfa + 2)*20){
                if i < anaListe.count {
                    yuklenmisListe.append(anaListe[i])
                }
            }
            sayfa += 1
            tableView_Kontrol.reloadData()
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        sayfa = 0
        
        filtreliListe = searchText.isEmpty ? anaListe : anaListe.filter({
            (makale : Makale) -> Bool in
            return makale.baslik.range(of: searchText, options: .anchored) != nil || makale.kisaAciklama.range(of: searchText, options: .anchored) != nil
        })
        
        yuklenmisListe.removeAll()
        
        for i in 0..<filtreliListe.count {
            if i<20 {
                yuklenmisListe.append(filtreliListe[i])
            }
        }
        
        tableView_Kontrol.reloadData()
    }
}

