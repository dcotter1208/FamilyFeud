//
//  ViewController.swift
//  FamilyFeud
//
//  Created by GC Student on 10/8/15.
//  Copyright © 2015 GC Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var userInputField: UITextField!
    var topics = Topics()
    
    let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Default")

    override func viewDidLoad() {
        super.viewDidLoad()
        cell.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.bathroomItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Default")
        
        
        cell.textLabel?.text = topics.bathroomItems[indexPath.row]

        
        
        return cell
    }
    
    @IBAction func guessButtonPressed(sender: AnyObject) {
   
        for word in topics.bathroomItems {
            print(word)
            if userInputField.text! == word {
                cell.hidden = false
            } else {
                print("Nope")
            }
            
        }
    }
    

}

