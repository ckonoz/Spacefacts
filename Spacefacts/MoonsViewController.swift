//
//  MoonsViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class MoonsViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var moonNames = ["Deimos", "Phobos", "Moon (Luna)", "Callisto", "Europa", "Ganymede", "Io", "Titan", "Miranda", "Ariel", "Umbriel", "Titania", "Oberon", "Triton"]
    
    var moonInfo = ["", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
    
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
        return self.moonNames.count
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        label.text = moonNames[indexPath.row]
    
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            //tableView.deselectRowAtIndexPath(indexPath, animated: true)
        // Create an alert for info
        let info = UIAlertController(title: moonNames[indexPath.row], message: moonInfo[indexPath.row], preferredStyle: .Alert)
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
