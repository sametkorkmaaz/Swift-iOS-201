//
//  ViewController.swift
//  Custom_Cell
//
//  Created by Samet Korkmaz on 18.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var ogrenciler = ["Samet Korkmaz","Serkan Korkmaz" ,"Fatih Korkmaz", "Mefruze Korkmaz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ogrenciler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell_Satir", owner: self, options: nil)?.first as! TableViewCell_Satir
        
        cell.ogrenciAd.text = ogrenciler[indexPath.row]
        
        return cell
    }
    //SEÇİLEN SATIRI ALMAK İÇİN
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(ogrenciler[indexPath.row])
    }
    //SOLO ÇEKİNCE SİLMEK İÇİN
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            ogrenciler.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

