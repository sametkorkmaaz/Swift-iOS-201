//
//  TableViewCell.swift
//  bolumSonu_Lab
//
//  Created by Samet Korkmaz on 24.03.2024.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var kisaAciklama_Lbl: UILabel!
    @IBOutlet weak var Baslik_LBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
