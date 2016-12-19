//
//  ContactList.swift
//  ContactList
//
//  Created by Aaron Tumini on 7/04/2015.
//  Copyright (c) 2015 Aaron Tumini. All rights reserved.
//

import UIKit
//  Array containing the contact details
var entries: [String] = ["Bob", "John", "frank", "2060", "555555555", "1 Street Address", "john", "Frank", "Bob", "2001", "12341234", "2 Street address", "jack", "somename", "lastname", "2010", "123123123", "3 Street Address", "joe", "show", "go", "2069", "098908", "swag street"]

class ContactList: NSObject {
    
    var firstName: String
    var lastName: String
    var middleName: String?
    var yearOfBirth: Int?
    var phoneNumber: String?
    var address: String?

    init(firstName: String, lastName: String, yearOfBirth: Int? = nil, middleName: String? = nil, address: String? = nil, phoneNumber: String? = nil){
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.yearOfBirth = yearOfBirth
        self.phoneNumber = phoneNumber
        self.address = address
    }

//  Returns the array for the innital load of the table
    func array() -> [String]{
        return entries
    }

//  Adds the details into the array and if the first name is the same as another entry the details will be edited
    func editArray() -> [String]{
        if(contains(entries, firstName))
        {
            var index = find(entries, "Bob")
            var maxIndex = index!
            entries[maxIndex] = firstName
            if let m = middleName{
                entries[maxIndex+1] = m
            }
            else{
                entries[maxIndex+1] = ""
            }

            entries[maxIndex+2] = lastName
            if let yb = yearOfBirth{
                entries[maxIndex+3] = String(yb)
            }
            else{
                entries[maxIndex+3] = ""
            }
            if let pn = phoneNumber{
                entries[maxIndex+4] = pn
            }
            else{
                entries[maxIndex+4] = ""
            }
            if let a = address{
                entries[maxIndex+5] = a
            }
            else{
                entries[maxIndex+5] = ""
            }
        }
        else{
            entries.insert(firstName, atIndex: 0)
            if let m = middleName{
                entries.insert(m, atIndex: 1)
            }
            else{
                entries.insert("", atIndex: 1)
            }
            entries.insert(lastName, atIndex: 2)
            if let yb = yearOfBirth{
                entries.insert(String(yb), atIndex: 3)
            }
            else{
                entries.insert("", atIndex: 3)
            }
            if let pn = phoneNumber{
                entries.insert(pn, atIndex: 4)
            }
            else{
                entries.insert("", atIndex: 4)
            }
            if let a = address{
                entries.insert(a, atIndex: 5)
            }
            else{
                entries.insert("", atIndex: 5)
            }
        }
        return entries
    }
}