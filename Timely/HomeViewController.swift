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
    @IBOutlet weak var navigationDate: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //register(_:forCellReuseIdentifier:) guarantees your table view will return a cell of the correct type when the Cell reuseIdentifier is provided to the dequeue method.
        self.checkinTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        let formatter = DateFormatter()
        
        formatter.dateStyle = .medium
        
        let dateStr = formatter.string(from: date as Date)
        
        navigationDate.text = dateStr

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
    
    
}
