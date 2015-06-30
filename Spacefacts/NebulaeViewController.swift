//
//  NebulaeViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class NebulaeViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nebulaeNames = ["Crab Nebula", "Orion Nebula", "Helix Nebula", "Cat's Eye Nebula", "Ant Nebula"]
    var nebulaeInfo = ["", "", "", "", ""]
    
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
        return self.nebulaeNames.count
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        label.text = nebulaeNames[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
           // tableView.deselectRowAtIndexPath(indexPath, animated: true)
        // Create an alert for info
        let info = UIAlertController(title: nebulaeNames[indexPath.row], message: nebulaeInfo[indexPath.row], preferredStyle: .Alert)
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