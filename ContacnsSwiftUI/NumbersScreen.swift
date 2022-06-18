//
//  NumbersScreen.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 15.06.2022.
//

import SwiftUI

struct NumbersScreen: View {
    let persons = Person.getContactList()
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text("\(person.fullName)")) {
                    VStack {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                                .frame(width: 50, alignment: .leading)
                            Text("\(person.phoneNumber)")
                                .frame(alignment: .leading)
                            
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.blue)
                                .frame(width: 50, alignment: .leading)
                            Text("\(person.email)")
                                .frame(alignment: .leading)
                        }
                    }
                }
                .navigationBarTitle("Contact List")
            }
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen()
    }
}
