//
//  CheckinViewController.swift
//  Timely
//
//  Created by admin on 16/12/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CheckinViewController : UIViewController {
    
    let date = NSDate()
    let formatter = DateFormatter()
    let calendar = NSCalendar.current
    
    var newCheckin = [NSManagedObject]()
    
    var checkinClick : Bool = true
    
    var userId = "user1"
    
    @IBAction func checkinClicked(_ sender: UIButton) {
        
        if checkinClick {
            
            let hours = calendar.component(.hour, from: date as Date)
            let mins = calendar.component(.minute, from: date as Date)
            
            self.checkinClick = false
            sender.setTitle("Checkout", for: UIControlState.normal)
            self.createCheckin(checkinHour: hours, checkinMins: mins, checkinDate: date as Date)
        }
        else {
            self.checkinClick = true
            sender.setTitle("Checkin", for: UIControlState.normal)
        }
    }
    
  
    func createCheckin(checkinHour: Int, checkinMins: Int, checkinDate: Date) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Checkins", in: managedContext)!
        
        let checkin = NSManagedObject(entity: entity, insertInto: managedContext)
        
        let checkinId = 12345
        
        checkin.setValue(checkinId, forKeyPath: "checkinId")
        
        checkin.setValue(checkinDate, forKeyPath: "checkinDate")
        
        checkin.setValue(checkinHour, forKeyPath: "checkinHour")
        
        checkin.setValue(checkinMins, forKeyPath: "checkinMins")
        
        do {
            try managedContext.save()
            print("Checkin Created")
            
        } catch let error as NSError {
            print(error.debugDescription)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.checkPermittedLocation()
    }
    
    func checkPermittedLocation() {
        
    }
}
