//
//  PersonToggleView.swift
//  M4L6Challenge
//
//  Created by Sabit Ahmed on 15/9/21.
//

import SwiftUI

struct PersonToggleView: View {
    @EnvironmentObject var model: PersonModel
    
    var body: some View {
        
        VStack {
            Text("Display Preferences")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Toggle("Show name:", isOn:$model.showName)
            Toggle("Show address:", isOn:$model.showAddress)
            Toggle("Show company:", isOn:$model.showCompany)
            Toggle("Show years of experience:", isOn:$model.showExperience)
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
        
    }
}

struct PersonToggleView_Previews: PreviewProvider {
    static var previews: some View {
        PersonToggleView()
    }
}
