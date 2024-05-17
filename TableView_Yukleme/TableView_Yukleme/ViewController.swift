//
//  ViewController.swift
//  TableView_Yukleme
//
//  Created by Samet Korkmaz on 23.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var liste : [String] = []
    
    @IBOutlet weak var tableView_Kontrol: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ElemanEkle()
    }
    
    func ElemanEkle(){
        var listeEklenecek = ["Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman"]
        liste.append(contentsOf: listeEklenecek)
        
        tableView_Kontrol.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liste.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = liste[indexPath.row] + " \(indexPath.row)"
        
        return cell
    }
    // SCROLL EN ALTA İNDİKÇE (YÜZDE90INDA) YENİ ELEMANLAR YÜKLENECEK
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if ((scrollView.contentOffset.y + scrollView.frame.size.height ) > scrollView.contentSize.height){
            ElemanEkle()
        }
    }
}

