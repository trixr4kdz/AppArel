//
//  FirstViewController.swift
//  AppArel
//
//  Created by Trixie on 2/2/17.
//  Copyright © 2017 Blue Rook. All rights reserved.
//

import UIKit
import SQLite

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!
        
        let db = try Connection("\(path)/db.sqlite3")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

