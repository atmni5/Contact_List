//
//  DetailViewController.swift
//  ContactList
//
//  Created by Aaron Tumini on 7/04/2015.
//  Copyright (c) 2015 Aaron Tumini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var middleName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var array: UILabel!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
               label.text = detail.description
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//  Adds the details into the array
    var p = Person(firstName: "", lastName: "", yearOfBirth: 0, middleName: "")
    var c = ContactListEntry(firstName: "", lastName: "", yearOfBirth: 0, middleName: "", address: "", phoneNumber: "")
    @IBAction func editDetails(sender: AnyObject) {
        c.firstName = firstName.text
        c.lastName = lastName.text
        c.middleName = middleName.text
        c.yearOfBirth = yearOfBirth.text.toInt()
        c.phoneNumber = phoneNumber.text
        c.address = address.text
        var entry = c.addContactdetails()
        var arnew = join(" ", entry)
    }
   

}

