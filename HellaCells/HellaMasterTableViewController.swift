//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Joanna Tzu-Hsuan Huang on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var number: Int = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayLabel.text = String(number)
    
    }
    
    
    

    
    
    
}
