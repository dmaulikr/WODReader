//
//  ViewController.swift
//  WODReader-Example
//
//  Created by Merrick Sapsford on 07/08/2017.
//  Copyright © 2017 AMRAP Labs. All rights reserved.
//

import UIKit
import WODReader

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feed = Feed(url: URL(string: "http://crossfit3d.com/feed/")!)
        let reader = WODReader(feeds: [feed])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

