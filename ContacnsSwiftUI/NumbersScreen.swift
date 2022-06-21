//
//  NumbersScreen.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 15.06.2022.
//

import SwiftUI

struct NumbersScreen: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                Section(header: Text("\(person.fullName)")) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "envelope")
                }
                .navigationBarTitle("Contact List")
            }
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen(contacts: Person.getContactList())
    }
}
