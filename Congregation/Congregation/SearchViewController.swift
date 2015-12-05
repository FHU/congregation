//
//  SearchViewController.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/22/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    var churches = Dataset.Data
    var filteredArray = Dataset.Data
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBAction func Search(sender: UIButton) {
        
        
        let searchWord = searchBar.text
        
        filteredArray = churches.filter{
            $0.name.rangeOfString(searchWord!, options: .CaseInsensitiveSearch) != nil}
        
        
        
        self.tableView.reloadData()
        
        //////// ANIMATION //////////
        let cells = self.tableView.visibleCells
        let tableHeight: CGFloat = self.tableView.bounds.size.height
        
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
        }

        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animateWithDuration(1.0, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveEaseOut, animations: {
                cell.transform = CGAffineTransformMakeTranslation(0, 0);
                }, completion: nil)
            
            index += 1
        }
        /////////////////////////////

    }
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        // reloads data when returning back to home view
        self.tableView.reloadData()
        
        /////// ANIMIATION /////////
        let cells = self.tableView.visibleCells
        let tableHeight: CGFloat = self.tableView.bounds.size.height
        
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animateWithDuration(1.0, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveEaseOut, animations: {
                cell.transform = CGAffineTransformMakeTranslation(0, 0);
                }, completion: nil)
            
            index += 1
        }
        ////////////////////////////////
        
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.filteredArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->       UITableViewCell{
        
        let searchCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SearchTableViewCell
        
        var church : Church
        
        church = filteredArray[indexPath.row]
        
        searchCell.churchTitle.text = church.name
        searchCell.churchTimes.text = ""
        
        if (church.favorite == false){
            searchCell.favorite.text = "☆"
        }
        else if (church.favorite == true){
            searchCell.favorite.text = "★"
        }
        
        for item in church.meetingTimes!{
            
            searchCell.churchTimes.text?.appendContentsOf("\(item.meeting): \(item.time)\n")
        }
        
        return searchCell
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier{
            
            switch identifier {
                
            case "showChurch":
                let cell = sender as! SearchTableViewCell
                if let indexPath = tableView.indexPathForCell(cell){
                    
                    let receivingVC = segue.destinationViewController as! ChurchViewController
                    receivingVC.receivedChurch = filteredArray[indexPath.row]
                }
            default:
                break
            }
        }
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
