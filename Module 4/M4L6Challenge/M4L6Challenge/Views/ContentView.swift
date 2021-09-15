//
//  ContentView.swift
//  M4L6Challenge
//
//  Created by Sabit Ahmed on 15/9/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            PersonListView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            
            PersonToggleView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
            
        }
        .environmentObject(PersonModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
