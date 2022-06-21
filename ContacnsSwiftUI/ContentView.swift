//
//  ContentView.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 15.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        
        TabView {
            
            ContactsScreen(contacts: contacts)
                .tabItem {
                    Image(systemName:"person.3.fill")
                    Text("Contacts")
                }
            
            NumbersScreen(contacts: contacts)
                .tabItem {
                    Image(systemName:"phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
