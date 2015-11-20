//
//  ChurchInfoTableViewCell.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 11/12/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class ChurchInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var churchTitle: UILabel!
    
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var web: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
