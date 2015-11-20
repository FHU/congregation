//
//  ChurchPeopleTableViewCell.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 11/12/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class ChurchPeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var people: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
