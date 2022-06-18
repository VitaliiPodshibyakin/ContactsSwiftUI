//
//  PersonInformationScreen.swift
//  ContacnsSwiftUI
//
//  Created by Виталий Подшибякин on 17.06.2022.
//

import SwiftUI

struct PersonInformationScreen: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName:"person.fill")
                .resizable()
            .frame(width: 250, height: 250)
            .padding()
            Spacer()
            
            List {
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)

                    Text("\(person.phoneNumber)")
                        
                }
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.blue)
                    Text("\(person.email)")
                }.navigationTitle("\(person.fullName)")
            }
        }
        
    }
}

struct PersonInformationScreen_Previews: PreviewProvider {
    static var previews: some View {
        PersonInformationScreen(person: Person.init(id: 1, name: "", surname: "", email: "@", phoneNumber: "+7"))
    }
}
