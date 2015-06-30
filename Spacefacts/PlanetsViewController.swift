//
//  PlanetsViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit

class PlanetsViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var planetNames = ["Mercury", "Mars", "Earth", "Venus", "Jupiter", "Saturn",  "Uranus", "Neptune"]
    var planetInfo = [
        
        "Radius: 2,440 km\n" +
        "Distance from Sun: 57,910,000 km\n" +
        "Mass: 328.5E21 kg\n" +
        "Gravity: 3.7 m/s²\n" +
        "Number of Moons: 0",
        
        "Radius: 3,390 km\n" +
        "Distance from Sun: 227,900,000 km\n" +
        "Mass: 639E21 kg\n" +
        "Gravity: 3.7 m/s²\n" +
        "Number of Moons: 2",
        
        "Radius: 6371 km\n" +
        "Distance from Sun: 149,600,000 km\n" +
        "Mass: 5.972E24 kg\n" +
        "Gravity: 9.8 m/s²\n" +
        "Number of Moons: 1",
        
        "Radius: 6,052 km\n" +
        "Distance from Sun: 108,200,000 km\n" +
        "Mass: 4.867E24 kg\n" +
        "Gravity: 8.87 m/s²\n" +
        "Number of Moons: 0",
        
        "Radius: 69,911 km\n" +
        "Distance from Sun: 778,500,000 km\n" +
        "Mass: 1.898E27 kg\n" +
        "Gravity: 24.79 m/s²\n" +
        "Number of Moons: 63",
        
        "Radius: 58,232 km\n" +
        "Distance from Sun: 1,433,000,000 km\n" +
        "Mass: 568.3E24 kg\n" +
        "Gravity: 10.44 m/s²\n" +
        "Number of Moons: 62",
        
        "Radius: 25,362 km\n" +
        "Distance from Sun: 2,877,000,000 km\n" +
        "Mass: 86.81E24 kg \n" +
        "Gravity: 8.69 m/s²\n" +
        "Number of Moons: 27",
        
        "Radius: 24,622 km\n" +
        "Distance from Sun: 4,503,000,000 km\n" +
        "Mass: 102.4E24 kg\n" +
        "Gravity: 11.15 m/s²\n" +
        "Number of Moons: 12"
        
    ]
    
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
        return self.planetNames.count
    }
    
    // Tells it how to display these rows
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ObjectType") as! UITableViewCell
        let label = cell.viewWithTag(1000) as! UILabel
        
        label.text = planetNames[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        // Create an alert for info
        let info = UIAlertController(title: planetNames[indexPath.row], message: planetInfo[indexPath.row], preferredStyle: .Alert)
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
