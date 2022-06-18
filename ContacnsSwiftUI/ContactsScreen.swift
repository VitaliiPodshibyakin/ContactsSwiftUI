//
//  ContactsScreen.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 15.06.2022.
//

import SwiftUI

struct ContactsScreen: View {
    
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List (persons) { person in
                NavigationLink(destination: PersonInformationScreen(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen()
    }
}
