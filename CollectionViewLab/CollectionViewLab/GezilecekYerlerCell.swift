//
//  GezilecekYerlerCell.swift
//  CollectionViewLab
//
//  Created by Samet Korkmaz on 22.03.2024.
//

import UIKit

class GezilecekYerlerCell: UICollectionViewCell {
    @IBOutlet weak var gunNoLabel: UILabel!
    @IBOutlet weak var aciklamaLabel: UITextView!
    @IBOutlet weak var konumLabel: UILabel!
    @IBOutlet weak var image_Gezi: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
