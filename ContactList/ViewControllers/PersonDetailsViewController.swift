//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Yaroslav Malygin on 03.11.2024.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
