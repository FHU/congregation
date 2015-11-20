//
//  AllChurchesTableViewCell.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 11/5/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class AllChurchesTableViewCell: UITableViewCell {

    @IBOutlet weak var churchTitle: UILabel!
    
    @IBOutlet weak var churchTimes: UILabel!
    
    @IBOutlet weak var distance: UILabel!
    
    @IBAction func pinPressed(sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
