//
//  GalaxiesViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class GalaxiesViewController: UITableViewController {
    
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
        return 4
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Milky Way"
        } else if indexPath.row == 1 {
            label.text = "Andromeda"
        } else if indexPath.row == 2 {
            label.text = "Magellanic Clouds"
        } else if indexPath.row == 3 {
            label.text = "Triangulum"
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
