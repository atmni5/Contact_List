//
//  ContactListEntry.swift
//  ContactList
//
//  Created by Aaron Tumini on 7/04/2015.
//  Copyright (c) 2015 Aaron Tumini. All rights reserved.
//

import Foundation

class ContactListEntry: Person{
    
    var phoneNumber: String?
    var address: String?
    
        init(firstName: String, lastName: String, yearOfBirth: Int? = nil, middleName: String? = nil, address: String? = nil, phoneNumber: String? = nil){
            super.init(firstName: firstName, lastName: lastName, yearOfBirth: yearOfBirth, middleName: middleName)
            self.phoneNumber = phoneNumber
            self.address = address
        }
    

    func addContactdetails() -> [String]{
        var cList = ContactList(firstName: firstName, lastName: lastName, yearOfBirth: yearOfBirth, middleName: middleName, address: address, phoneNumber: phoneNumber)
        var entry = cList.editArray()
        return entry
    }
}