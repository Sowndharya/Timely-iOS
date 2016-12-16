//
//  CheckinCell.swift
//  Timely
//
//  Created by admin on 16/12/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation
import UIKit
import CoreData
class CheckinCell: UITableViewCell {
    
    
    @IBOutlet weak var checkinLocation: UILabel!
    
    
    @IBOutlet weak var checkinTiming: UILabel!
    
    func bindData(checkins: NSManagedObject) {
    
    }
}
