//
//  ViewController.swift
//  TableView_Ornek
//
//  Created by Samet Korkmaz on 23.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sifre_Label: UITextField!
    @IBOutlet weak var kullaniciAdi_Label: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func girisYap_Button(_ sender: Any) {
        if (kullaniciAdi_Label.text == "samet" && sifre_Label.text == "123") {
            performSegue(withIdentifier: "girisYap", sender: nil)
        }
        else {
            print("hatalı bilgiler")
        }
    }
}

