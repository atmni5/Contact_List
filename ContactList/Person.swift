//
//  person.swift
//  Personal1
//
//  Created by Aaron Tumini on 11/03/2015.
//  Copyright (c) 2015 Aaron Tumini. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var middleName: String?
    var age: Int!
    var yearOfBirth: Int?
    
    convenience init(firstName: String, lastName: String, age: Int, middleName: String? = nil){
        var yearOB:Int
        yearOB = NSCalendar.currentCalendar().component(NSCalendarUnit.CalendarUnitYear, fromDate: NSDate()) - age
        self.init(firstName: firstName, lastName: lastName, middleName: middleName, yearOfBirth: yearOB)
    }
    
    init(firstName: String, lastName: String, yearOfBirth: Int? = nil, middleName: String? = nil){
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.yearOfBirth = yearOfBirth
        if let yb = yearOfBirth{
            let currentYear = NSCalendar.currentCalendar().component(NSCalendarUnit.CalendarUnitYear, fromDate: NSDate())
            self.age = currentYear - yearOfBirth!
        }

    }
    
    func fullName() -> String{
        
        if let m = middleName{
            return firstName + " " + m + " " + lastName
        }
        else{
            return firstName + " " + lastName
        }
    }
    
}