//
//  BrewerCell.swift
//  BrewList
//
//  Created by user180592 on 12/1/20.
//

import UIKit

class BrewerCell: UITableViewCell
{
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            
            nameLabel.adjustsFontForContentSizeCategory = true
            subLabel.adjustsFontForContentSizeCategory = true
            starsLabel.adjustsFontForContentSizeCategory = true
        }
    
}
