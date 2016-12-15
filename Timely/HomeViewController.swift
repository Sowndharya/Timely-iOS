//
//  HomeViewController.swift
//  Timely
//
//  Created by admin on 15/12/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation
import UIKit
import CoreData
class HomeViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var checkinTable: UITableView!
    
    let userId = "09123FR"
    
    var checkinsForTheDay = [NSManagedObject]()
    let cellReuseIdentifier = "chekinCell"
    var checkinForTheDayArray : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.checkinTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkinsForTheDay.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let checkinCell = self.checkinTable.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
        //let checkInLocation = self.checkinsForTheDay[indexPath.row]
        checkinCell?.textLabel?.text = checkinForTheDayArray[indexPath.row]
        return checkinCell!
    
    }
    
    
}
