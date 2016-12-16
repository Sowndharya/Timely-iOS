//
//  Play.swift
//  Timely
//
//  Created by admin on 16/12/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation

//: Playground - noun: a place where people can play

import UIKit
import Foundation

func play() {

let date = NSDate()

let calendar = NSCalendar.current

let hour = calendar.component(.hour, from: date as Date)

let minutes = calendar.component(.minute, from: date as Date)

let day = calendar.component(.day, from: date as Date)

let today = calendar.component(.weekdayOrdinal, from: date as Date)

print(date)
print(today)
print(day)
print(hour)
print(minutes)

//let myLocale = Locale(identifier: "bg_BG")

//: ### Setting an application-wide `TimeZone`
//: Notice how we use if-let in case the abbreviation is wrong. It will fallback to the default timezone in that case.
if let myTimezone = TimeZone(abbreviation: "EEST") {
    print("\(myTimezone.identifier)")
}


//: ### Using a `DateFormatter`
//: You can set a locale and styles to the date formatter. This allows the dates to be formatted in the given language and provides automatic handling of the preferred date formatting in the locale
let formatter = DateFormatter()

formatter.dateFormat = "yyyy'-'MM'-'dd"

let dateStr = formatter.string(from: date as Date)
print(dateStr)

let startTime = TimeInterval()
print(startTime)
let currentTime = NSDate.timeIntervalSinceReferenceDate
print(currentTime)
let elapsedTime: TimeInterval = currentTime - startTime
print(elapsedTime)
let timerMinutes = Int(elapsedTime / 60.0)
print(timerMinutes)
}
