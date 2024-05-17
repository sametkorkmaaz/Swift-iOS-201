//
//  ViewController.swift
//  pickerView
//
//  Created by Samet Korkmaz on 3.03.2024.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var pickerView: UIPickerView!
    
    var pcikerViewListe = ["Eleman1","Eleman2","Eleman3","Eleman4","Eleman5","Eleman6"]
    var pcikerViewListe2 = ["E1","E2","E3","E4","E5","E6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnYenidenYukle(_ sender: Any) {
        
        pickerView.reloadAllComponents()
    }
    // KAÇ TANE COMPONENTS OLACAĞI İÇİN
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    // COMPONENTLERİN ELEMAN SAYIISNI VERMEK İÇİN
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return pcikerViewListe.count
        }
        return pcikerViewListe2.count
    }
    //PİCKER VİEW A GÖSTERECEĞİ  ELMANI VERMEK İÇİN
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if component == 0 {
            return NSAttributedString(string: pcikerViewListe[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
        return NSAttributedString(string: pcikerViewListe2[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.blue])
    }
    //SEÇİLEN ELEMANI ALMAK İÇİN
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            print(pcikerViewListe[row])
        } else{
            print(pcikerViewListe2[row])
        }
    }
    
}

