//
//  Shift.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import Foundation

// I messed up with the JSON file. I shouldn't need the allShifts constant if I have a Shifts struct that contains all Shifts.
//struct Shifts: Codable {
//    let shifts: [Shift]
//}

struct Shift: Codable {
    let role: String
    let name: String
    let startDate: String
    let endDate: String
    let color: String
    
    static let allShifts: [Shift] = Bundle.main.decode(file: "shifts.json")
    
    enum CodingKeys: String, CodingKey {
        case role, name
        case startDate = "start_date"
        case endDate = "end_date"
        case color
    }
}

enum Color: String, Codable {
    case blue = "blue"
    case green = "green"
    case red = "red"
}


