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
    
    
    let date = NSDate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.checkinTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        let formatter = DateFormatter()
        
        formatter.dateStyle = .medium
        
        let dateStr = formatter.string(from: date as Date)
        
        self.title = dateStr

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkinsForTheDay.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
                
        let checkin = checkinsForTheDay[indexPath.row]
        let checkinCell = self.checkinTable.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        checkinCell.textLabel?.text = checkin.value(forKey: "loacationId") as? String
        return checkinCell
    
    }
    
    @IBAction func nextClick(_ sender: UIBarButtonItem) {
    }
    
    
    
    @IBAction func previousClick(_ sender: UIBarButtonItem) {
    }
    
    
    
}
