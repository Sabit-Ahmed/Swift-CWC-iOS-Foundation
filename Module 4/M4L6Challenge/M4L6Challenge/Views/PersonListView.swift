//
//  PersonListView.swift
//  M4L6Challenge
//
//  Created by Sabit Ahmed on 15/9/21.
//

import SwiftUI

struct PersonListView: View {
    @EnvironmentObject var model: PersonModel
    
    var body: some View {
        List(model.person) { item in
            VStack(alignment: .leading) {
                Text("Name: \(item.name)")
                Text("Address: \(item.address)")
                Text("Company: \(item.company)")
                Text("Years of Experience: \(item.yearsOfExperience)")
            }
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
    }
}
