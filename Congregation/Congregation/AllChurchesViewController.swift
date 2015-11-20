//
//  AllChurchesViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/22/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class AllChurchesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var churches = Dataset.Data
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Do any additional setup after loading the view, typically from a nib.
    }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
      func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

      func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.churches.count
    }
    
      func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->       UITableViewCell{
        
        let allChurchesCell = tableView.dequeueReusableCellWithIdentifier("All Churches Cell", forIndexPath: indexPath) as! AllChurchesTableViewCell
        
        var church : Church
        
        church = churches[indexPath.row]
        
        allChurchesCell.churchTitle.text = church.name
        
        allChurchesCell.churchTimes.text = ""
        
        for item in churches[indexPath.row].meetingTimes!{
            
            allChurchesCell.churchTimes.text?.appendContentsOf("\(item.meeting): \(item.time)\n")
        }
        
        return allChurchesCell
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
            if let identifier = segue.identifier{
            
            switch identifier {
                
            case "SwitchToChurchView":
                let cell = sender as! AllChurchesTableViewCell
                if let indexPath = tableView.indexPathForCell(cell){
                    
                    let receivingVC = segue.destinationViewController as! ChurchViewController
                    receivingVC.receivedChurch = churches[indexPath.row]
                }
            default:
                break
            }
        }
        
        
    }
        
        
}