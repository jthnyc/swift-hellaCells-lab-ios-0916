//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var numbers = [Int]()
    func getThatNumber () -> [Int] {
        for n in 1...100 {
            numbers.append(n)
        }
        return numbers
    }
    
    override func viewDidLoad() {
        self.numbers = getThatNumber()
        print(numbers)
        
    }
    
   
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(numbers.count)
        return numbers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath)
        let number = numbers[indexPath.row]
        cell.textLabel?.text = String(number)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowNumber" {
            let destinationViewController = segue.destination as! HellaMasterTableViewController
            let selectedNumberIndex = tableView.indexPathForSelectedRow?.row
            if selectedNumberIndex != nil {
                destinationViewController.number = self.numbers[selectedNumberIndex!]
            }
        }
    }
    
    
}

