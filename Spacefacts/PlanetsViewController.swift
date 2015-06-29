//
//  PlanetsViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class PlanetsViewController: UITableViewController {
    
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
        return 8
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Mercury"
        } else if indexPath.row == 1 {
            label.text = "Mars"
        } else if indexPath.row == 2 {
            label.text = "Earth"
        } else if indexPath.row == 3 {
            label.text = "Venus"
        } else if indexPath.row == 4 {
            label.text = "Jupiter"
        } else if indexPath.row == 5 {
            label.text = "Saturn"
        } else if indexPath.row == 6 {
            label.text = "Neptune"
        } else if indexPath.row == 7 {
            label.text = "Uranus"
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
