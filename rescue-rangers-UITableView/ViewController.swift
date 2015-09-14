//
//  ViewController.swift
//  rescue-rangers-UITableView
//
//  Created by Jonathan Wood on 9/14/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var rangersArray: [String] = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThDiXSbzM5ulp4526_y88JH8b4dJsXKJFIZgWURBUc6j2h1KWY-Q" , "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR8LVEhhuDWWbqwRevO6XVNJzSy0rcFa6srbk9EC-JWxlbiU0uFxA" , "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSPsBsTZbnp1Wn_PbVUhYlmABUzaGK2ZenMXdwuXisrascEdr8wUg", "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR3yBNFAlo0UILkbmpKdTpvKgNjBM_Q8kRT2xMhjiMvoRtTRws8", "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR9IKSZEDPkmbAqrGw-Ix0Sbc9JXZIZF4sWZCwyYJ7aKGKG_BfLjA"]
    
    var rangerTitles = ["Chip", "Dale", "Gadget", "Monterey", "Zipper"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rangersArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("rangerID") as? RangersCell {
            //cell.configureCell(theRangers[], text: String)
            
            var img: UIImage!
            
            let url = NSURL(string: rangersArray[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "rr-logo")
            }
            
            cell.configureCell(img, text: rangerTitles[indexPath.row])
            
            return cell
            
        } else {
            return RangersCell()
        }
    }

}

