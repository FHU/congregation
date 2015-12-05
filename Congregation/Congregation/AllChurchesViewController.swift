//
//  AllChurchesViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/22/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit
import CoreLocation
class AllChurchesViewController: UIViewController, CLLocationManagerDelegate, UITableViewDelegate, UITableViewDataSource  {
    
    var churches = Dataset.Data
    var displayedChurches = Dataset.Data
    var locationManager = CLLocationManager()
    var currentLocation = CLLocation()
        @IBOutlet weak var navTitle: UINavigationItem!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var allFavoriteSegmentedControl: UISegmentedControl!
    
    @IBAction func switchChurchListing(sender: UISegmentedControl) {

        displayedChurches.removeAll()
        
        switch allFavoriteSegmentedControl.selectedSegmentIndex
        {
    
            
        case 0:
            
            displayedChurches = churches
            navTitle.title = "All Churches"
            
            
        case 1:
            
            for item in churches{
                
                if (item.favorite == true){
                    
                    displayedChurches.append(item)
                }
                
                
                
            }
            navTitle.title = "Favorite Churches"
            
            
        default:
            break;
            
            
        }
        self.tableView.reloadData()
        
        
        let cells = self.tableView.visibleCells
        let tableHeight: CGFloat = self.tableView.bounds.size.height
        
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animateWithDuration(1, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveLinear, animations: {
                cell.transform = CGAffineTransformMakeTranslation(0, 0);
                }, completion: nil)
            
            index += 1
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
       
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
        currentLocation = self.locationManager.location!
        
        
        
        let distance = currentLocation.distanceFromLocation(currentLocation)
        print(distance)


    
    
    }
    
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error)->Void in
            
            if (error != nil)
            {
                print("Error: " + error!.localizedDescription)
                return
            }
            
            if placemarks!.count > 0
            {
                let pm = placemarks![0] 
                self.displayLocationInfo(pm)
            }
            else
            {
                print("Error with the data.")
            }
        })
    }
    func displayLocationInfo(placemark: CLPlacemark)
    {
        
        self.locationManager.stopUpdatingLocation()

        print(placemark.locality)
        print(placemark.postalCode)
        print(placemark.administrativeArea)
        print(placemark.country)
        
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
    {
        print("Error: " + error.localizedDescription)
    }
    


    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        // reloads data when returning back to home view
        self.tableView.reloadData()
        
        let cells = self.tableView.visibleCells
        let tableHeight: CGFloat = self.tableView.bounds.size.height
        
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animateWithDuration(1, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveEaseOut, animations: {
                cell.transform = CGAffineTransformMakeTranslation(0, 0);
                }, completion: nil)
            
            index += 1
        }
      
        
    }
        
      func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

      func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.displayedChurches.count
    }
    
      func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->       UITableViewCell{
        
        let allChurchesCell = tableView.dequeueReusableCellWithIdentifier("All Churches Cell", forIndexPath: indexPath) as! AllChurchesTableViewCell
        
        var church : Church
        
        church = displayedChurches[indexPath.row]
        
        allChurchesCell.churchTitle.text = church.name
        
         allChurchesCell.distance.text = "\(String(format: "%.1f",currentLocation.distanceFromLocation(church.location!)/1609.34))mi"
        
        allChurchesCell.churchTimes.text = ""
        
        if (church.favorite == false){
            
            allChurchesCell.favorite.text = "☆"
            
        }
        else if (church.favorite == true){
            
            allChurchesCell.favorite.text = "★"
            
        }
        
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