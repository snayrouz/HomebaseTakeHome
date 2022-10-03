//
//  CustomDateFormatter.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import Foundation


/*
 This function accepts a start and end date:
 toDate(start: "2018-04-20 09:00:00 -0800", end: "2018-04-20 12:00:00 -0800")
 and will return a string formatted like:
 Output: "Fri 4/20 9-12 PM"
 */


func toDate(start: String, end: String) -> String {
    let dateFormatter = DateFormatter()
    
    //format Date based on JSON
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
    
    //create a startDate and endDate to hold the values we're passingin
    let startDate = dateFormatter.date(from: start)!
    let endDate = dateFormatter.date(from: end)!
    
    //creating a calendar will help us find the day (ex: Friday, Saturday, etc)
    let calendar = Calendar.current
    
    //lets pull the month, day and hour components from both start and end date
    let startComp = calendar.dateComponents([.month,.day,.hour], from: startDate)
    let endComp = calendar.dateComponents([.month,.day,.hour], from: endDate)
    let startMonth = startComp.month!
    let startDay = startComp.day!
    let startHour = startComp.hour!
    let endHour = endComp.hour!
    
    //this will help us format our start and end days to stringify it all next
    dateFormatter.dateFormat = "a"
    let endTime = dateFormatter.string(from: endDate)
    
    dateFormatter.dateFormat = "E"
    let startDayString = dateFormatter.string(from: startDate)
    
    return "\(startDayString) \(startMonth)/\(startDay) \(startHour)-\(endHour) \(endTime)"
}


