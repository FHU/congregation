//
//  ChurchViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/27/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
class ChurchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {
    
       
    @IBOutlet weak var navChurchTitle: UINavigationItem!
    @IBOutlet weak var TableView: UITableView!
    
    
    
    var receivedChurch: Church?
    var address = "1 Infinite Loop, CA, USA"
    var geocoder = CLGeocoder()
    
    
    @IBAction func favoriteButtonPress(sender: UIButton) {
        
        
        if (receivedChurch?.favorite == false){
            
            receivedChurch?.favorite = true
            sender.setTitle("★" , forState: UIControlState.Normal)
            print(sender.titleLabel!.text)
            print(receivedChurch?.favorite)
        }
         else if (receivedChurch?.favorite == true){
            
            receivedChurch?.favorite = false
            sender.setTitle("☆" , forState: UIControlState.Normal)
            print(sender.titleLabel!.text)
            print(receivedChurch?.favorite)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        TableView.estimatedRowHeight = 180 //TableView.rowHeight
        TableView.rowHeight = UITableViewAutomaticDimension
        
        navChurchTitle.title = receivedChurch?.name
        
       
        
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
            
            
            cell.favoriteButton.tag = indexPath.row
            
            cell.churchTitle.text = receivedChurch?.name
            cell.address.text = "\(receivedChurch!.streetAddress)\n\(receivedChurch!.city), \(receivedChurch!.state) \(receivedChurch!.zip)"
            cell.phone.text = receivedChurch?.phone
            cell.web.text = receivedChurch?.website
            
            if (receivedChurch?.favorite == true){
                
                 cell.favoriteButton.setTitle("★" , forState: UIControlState.Normal)

            }
            else if (receivedChurch?.favorite == false){
            
                cell.favoriteButton.setTitle("☆" , forState: UIControlState.Normal)
            }

            
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
            
            cell.eventsList.text? = ""
            
            for item in (receivedChurch?.events)!{
                
                cell.eventsList.text?.appendContentsOf("\(item.title) @ \(item.startTime) on \(item.date)\n")
            }
            
            
            return cell
        
        case 4:
            let cell = tableView.dequeueReusableCellWithIdentifier("Topic Cell", forIndexPath: indexPath) as!ChurchTopicsTableViewCell
            
            cell.topicList.text? = ""
            for item in (receivedChurch?.topics)!{
                
                cell.topicList.text?.appendContentsOf("\(item.service): \(item.title) - \(item.speaker)\n")
            }
            
            return cell
            
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("Topic Cell", forIndexPath: indexPath) as UITableViewCell
            
            return cell
            
        }
        
        
        
    }
    
    
}
