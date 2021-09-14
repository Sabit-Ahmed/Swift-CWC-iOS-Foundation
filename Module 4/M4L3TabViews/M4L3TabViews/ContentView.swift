//
//  ContentView.swift
//  M4L3TabViews
//
//  Created by Sabit Ahmed on 14/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {  // This is two-way binding
            Text("This is Tab 1")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            
            VStack {
                Text("This is Tab 2")
                Text("Here are more texts")
            }
            .tabItem {
                Image(systemName: "star")
                Text("Tab 2")
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
