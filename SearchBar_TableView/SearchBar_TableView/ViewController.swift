//
//  ViewController.swift
//  SearchBar_TableView
//
//  Created by Samet Korkmaz on 23.03.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var anaListe = ["Elma","Armut","Portakal","Limon","Ayva","Erik","Elma","Armut","Portakal","Limon","Ayva","Erik","Elma","Armut","Portakal","Limon","Ayva","Erik"]
    var filtreliListe : [String]! = []

    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var tableView_Kontrol: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        filtreliListe.append(contentsOf: anaListe)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtreliListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                cell.textLabel?.text = filtreliListe[indexPath.row]
                return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(anaListe[indexPath.row])
        let selectedFruit = anaListe[indexPath.row]
                performSegue(withIdentifier: "showSecondTableView", sender: selectedFruit)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showSecondTableView", let selectedFruit = sender as? String {
                if let secondTableViewController = segue.destination as? SecondTableViewController {
                    secondTableViewController.selectedFruit = selectedFruit
                }
            }
        }

    // Search barda yazılan harflerle başlayanlar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtreliListe = searchText.isEmpty ? anaListe : anaListe.filter({(str : String) -> Bool in
            return str.range(of : searchText , options: .anchored) != nil
        })
        tableView_Kontrol.reloadData()
    }
}

