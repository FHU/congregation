//
//  SearchTableViewCell.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 12/3/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

   
    
    
    
    @IBOutlet weak var churchTitle: UILabel!
    
    @IBOutlet weak var churchTimes: UILabel!
    
    @IBOutlet weak var favorite: UILabel!
    
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
