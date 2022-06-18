//
//  PersonModel.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 15.06.2022.
//

import SwiftUI

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {

        var persons: [Person] = []

        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()

        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)

        for index in 0..<iterationCount {
            let person = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )

            persons.append(person)
        }

        return persons
    }
}

