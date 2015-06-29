//
//  AboutViewController.swift
//  Spacefacts
//
//  Created by Corinne Konoza on 6/25/15.
//  Copyright (c) 2015 Corinne Konoza. All rights reserved.
//

import UIKit
import QuartzCore


class AboutViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 5
        backButton.layer.borderWidth = 1
        backButton.layer.borderColor = UIColor.whiteColor().CGColor
        backButton.layer.backgroundColor = UIColor.whiteColor().CGColor
        
    }

    // Action method for the back button
    @IBAction func back() {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
