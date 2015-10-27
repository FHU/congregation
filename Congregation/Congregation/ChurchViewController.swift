//
//  ChurchViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/27/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class ChurchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ChurchTitle: UINavigationItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ChurchTitle.title = "Church Title Goes Here..."
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->       UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        return cell
    }
    
    
}
