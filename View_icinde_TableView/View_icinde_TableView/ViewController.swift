//
//  ViewController.swift
//  View_icinde_TableView
//
//  Created by Samet Korkmaz on 17.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var girilenText: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var liste : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ekle_Button(_ sender: Any) {
        liste.append(girilenText.text!)
        tableView.reloadData()
    }
    
}
        // SATIR SAYISI
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liste.count
    }
      // ELEMANLAR
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = liste[indexPath.row]
        return cell
    }
    //SOLO ÇEKİNCE SİLME
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            liste.remove(at: indexPath.row)
            tableView.reloadData()
        }
            
    }
    //LİSTEDEN SEÇİLEN ELEMANI YAKALAMA
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(liste[indexPath.row])
    }
}

