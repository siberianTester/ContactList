//
//  Person.swift
//  ContactList
//
//  Created by Yaroslav Malygin on 31.10.2024.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore().names
        let lastNames = DataStore().lastNames
        let mailAddresses = DataStore().mailAddresses
        let phoneNumbers = DataStore().phoneNumbers
        
        for value in 0..<names.count {
            let person = Person(
                name: names[value],
                lastName: lastNames[value],
                email: mailAddresses[value],
                phoneNumber: phoneNumbers[value]
            )
            persons.append(person)
        }
        return persons
    }
}




