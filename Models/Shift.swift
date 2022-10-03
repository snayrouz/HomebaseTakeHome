//
//  Shift.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import Foundation

struct Shift: Codable {
    let role: String
    let name: String
    let startDate: String
    let endDate: String
    let color: String
    
    enum CodingKeys: String, CodingKey {
        case role, name
        case startDate = "start_date"
        case endDate = "end_date"
        case color
    }
}