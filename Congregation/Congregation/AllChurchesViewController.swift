//
//  AllChurchesViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/22/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class AllChurchesViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource*/ {
    
    var churches = [Church]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.churches = [Church(name: "Double Springs Church of Christ"), Church(name: "Henderson Church of Christ"), Church(name: "Pinson Church of Christ"), Church(name: "Estes Church of Christ"), Church(name: "Cool Hand Luke Church of Christ")]
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
}
    
}