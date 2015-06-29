//
//  NebulaeViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class NebulaeViewController: UITableViewController {
    
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
        return 5
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Crab Nebula"
        } else if indexPath.row == 1 {
            label.text = "Orion Nebula"
        } else if indexPath.row == 2 {
            label.text = "Helix Nebula"
        } else if indexPath.row == 3 {
            label.text = "Cat's Eye Nebula"
        } else if indexPath.row == 4 {
            label.text = "Ant Nebula"
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    // Action method for the back button
    @IBAction func back() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}