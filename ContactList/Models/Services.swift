//
//  Services.swift
//  ContactList
//
//  Created by Yaroslav Malygin on 31.10.2024.
//

final class DataStore {
    let names = [
        "John",
        "Mark",
        "Jessica",
        "Will",
        "Jared",
        "Sam",
        "Stive"
    ].shuffled()
    
    let lastNames = [
        "Smith",
        "Kage",
        "Alba",
        "Leto",
        "Serious",
        "Bushemi",
        "Walberg"
    ].shuffled()
    
    let mailAddresses = [
        "smith@ya.bk",
        "kage@mail.ru",
        "alba@gmail.com",
        "leto@mail.ru",
        "serious@ya.bk",
        "bushemi@ya.bk",
        "walberg@gmail.com"
    ].shuffled()
    
    let phoneNumbers = [
        "111111",
        "222222",
        "333333",
        "444444",
        "555555",
        "666666",
        "777777"
    ].shuffled()
}
