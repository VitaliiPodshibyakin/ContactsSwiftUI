//
//  ContentView.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 15.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            ContactsScreen()
                .tabItem {
                    Image(systemName:"person.3.fill")
                    Text("Contacts")
                }
            
            NumbersScreen()
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
