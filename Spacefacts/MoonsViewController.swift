//
//  MoonsViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class MoonsViewController: UITableViewController {
    
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
        return 14
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Deimos"
        } else if indexPath.row == 1 {
            label.text = "Phobos"
        } else if indexPath.row == 2 {
            label.text = "Moon (Luna)"
        } else if indexPath.row == 3 {
            label.text = "Callisto"
        } else if indexPath.row == 4 {
            label.text = "Europa"
        } else if indexPath.row == 5 {
            label.text = "Ganymede"
        } else if indexPath.row == 6 {
            label.text = "Io"
        } else if indexPath.row == 7 {
            label.text = "Titan"
        } else if indexPath.row == 8 {
            label.text = "Miranda"
        } else if indexPath.row == 9 {
            label.text = "Ariel"
        } else if indexPath.row == 10 {
            label.text = "Umbriel"
        } else if indexPath.row == 11 {
            label.text = "Titania"
        } else if indexPath.row == 12 {
            label.text = "Oberon"
        } else if indexPath.row == 13 {
            label.text = "Triton"
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
