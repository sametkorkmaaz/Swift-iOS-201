//
//  TableViewCell.swift
//  Table_View
//
//  Created by Samet Korkmaz on 17.03.2024.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var LBL_OgrenciAdi: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
