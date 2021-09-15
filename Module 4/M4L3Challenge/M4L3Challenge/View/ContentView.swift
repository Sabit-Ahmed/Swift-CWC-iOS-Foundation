//
//  ContentView.swift
//  M4L3Challenge
//
//  Created by Sabit Ahmed on 14/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 0
    
    var body: some View {
        TabView (selection: $tabIndex) {
            Text("This tab's tag is \(tabIndex)")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            
            
            Button(action: {
                tabIndex = 2
            }, label: {
                Text("Take me to tab 3!")
            })
                .tabItem {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Tab 2")
                }
                .tag(1)
            
            
            List {
                ForEach (0..<100) {i in
                    Text("This is tab 3!")
                }
            }
                .tabItem {
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
                .tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
