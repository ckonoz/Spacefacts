//
//  GalaxiesViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class GalaxiesViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var galaxyNames = ["Milkyway", "Andromeda", "Magellanic Clouds", "Triangulum"]
    var galaxyInfo = ["", "", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 44
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Let it know how many rows of data are needed
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.galaxyNames.count
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        label.text = galaxyNames[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
           // tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        // Create an alert for info
        let info = UIAlertController(title: galaxyNames[indexPath.row], message: galaxyInfo[indexPath.row], preferredStyle: .Alert)
        let done = UIAlertAction(title: "Done", style: .Default, handler: nil)
        info.addAction(done)
        
        // Display the alert
        self.presentViewController(info, animated: true, completion: nil)
    }
    
    // Action method for the back button
    @IBAction func back() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}
