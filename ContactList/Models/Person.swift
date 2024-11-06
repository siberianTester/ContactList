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
        let dataStore = DataStore.shared
        
        let names = dataStore.names
        let lastNames = dataStore.lastNames
        let mailAddresses = dataStore.mailAddresses
        let phoneNumbers = dataStore.phoneNumbers
        
        let iterationCount = min(
            names.count,
            lastNames.count,
            mailAddresses.count,
            phoneNumbers.count
        )
        
        for value in 0..<iterationCount {
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




