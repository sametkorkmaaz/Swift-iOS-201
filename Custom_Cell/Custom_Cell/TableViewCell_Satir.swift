//
//  TableViewCell_Satir.swift
//  Custom_Cell
//
//  Created by Samet Korkmaz on 18.03.2024.
//

import UIKit

class TableViewCell_Satir: UITableViewCell {


    @IBOutlet weak var ogrenci_foto: UIImageView!
    @IBOutlet weak var ogrenciAd: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func ogrenci_arti_ver(_ sender: Any) {
    }
    

}
