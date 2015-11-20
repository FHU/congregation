//
//  ChurchViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/27/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class ChurchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
       
    @IBOutlet weak var TableView: UITableView!
    
    
    var receivedChurch: Church?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.estimatedRowHeight = 180 //TableView.rowHeight
        TableView.rowHeight = UITableViewAutomaticDimension
        
        self.navigationController?.title = receivedChurch?.name
        
        
        
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
        return 5
    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->       UITableViewCell{
        
        
        switch indexPath.row{
          
        case 0:
            
            let cell = tableView.dequeueReusableCellWithIdentifier("Info Cell", forIndexPath: indexPath) as!ChurchInfoTableViewCell
            
            cell.churchTitle.text = receivedChurch?.name
            cell.address.text = receivedChurch?.streetAddress
            cell.phone.text = receivedChurch?.phone
            cell.web.text = receivedChurch?.website
            
            return cell
            
        case 1:
            
            let cell = tableView.dequeueReusableCellWithIdentifier("Time Cell", forIndexPath: indexPath) as!ChurchTimesTableViewCell
            
            cell.meetingTimes.text? = ""
            
            for item in (receivedChurch?.meetingTimes)!{
                
                cell.meetingTimes.text?.appendContentsOf("\(item.meeting): \(item.time)\n")
            }

            
            
            return cell
        
        case 2:
            
            let cell = tableView.dequeueReusableCellWithIdentifier("People Cell", forIndexPath: indexPath) as!ChurchPeopleTableViewCell
            
            cell.people.text? = ""
            
            for item in (receivedChurch?.people)!{
                
                cell.people.text?.appendContentsOf("\(item.firstName) \(item.lastName): \(item.position)\n")
            }
            return cell
        
        case 3:
            
            let cell = tableView.dequeueReusableCellWithIdentifier("Event Cell", forIndexPath: indexPath) as!ChurchEventsTableViewCell
            
            return cell
        
        case 4:
            let cell = tableView.dequeueReusableCellWithIdentifier("Topic Cell", forIndexPath: indexPath) as!ChurchTopicsTableViewCell
            
            return cell
            
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("Topic Cell", forIndexPath: indexPath) as UITableViewCell
            
            return cell
            
        }
        
        
        
    }
    
    
}
