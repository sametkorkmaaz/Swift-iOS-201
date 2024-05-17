//
//  ViewController.swift
//  date_picker
//
//  Created by Samet Korkmaz on 2.03.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tarih_datepicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tarih_datepicker.minimumDate = Date()
        // geçmiş tarih seçtirmez
        tarih_datepicker.setValue(UIColor.red, forKey: "textColor")
    }

    @IBAction func secilen_tarih(_ sender: Any) {
        
        let zaman = tarih_datepicker.date
    
        let df = DateFormatter()
        df.dateFormat = "dd.mm.yyyy"
        
        print(df.string(from: zaman))
    }
    
}

