//
//  Validator.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import Foundation

protocol CreateValidatorImpl {
    func validate(_ shift: NewShift) throws
}

struct CreateValidator: CreateValidatorImpl {
    
    func validate(_ shift: NewShift) throws {
        
        if shift.name.isEmpty {
            throw CreateValidatorError.invalidName
        }
        
        if shift.role.isEmpty {
            throw CreateValidatorError.invalidRole
        }
        
        if shift.startDate.isEmpty {
            throw CreateValidatorError.invalidStateDate
        }
        
        if shift.endDate.isEmpty {
            throw CreateValidatorError.invalidEndDate
        }
        
        if shift.color.isEmpty {
            throw CreateValidatorError.invalidColor
        }
    }
}

extension CreateValidator {
    enum CreateValidatorError: LocalizedError {
        case invalidName
        case invalidRole
        case invalidStateDate
        case invalidEndDate
        case invalidColor
    }
}

extension CreateValidator.CreateValidatorError {
    
    var errorDescription: String? {
        switch self {
        case .invalidName:
            return "Name can't be empty"
        case .invalidRole:
            return "Role can't be empty"
        case .invalidStateDate:
            return "Start Date can't be empty"
        case .invalidEndDate:
            return "End Date can't be empty"
        case .invalidColor:
            return "Color can't be empty"
        }
    }
}
