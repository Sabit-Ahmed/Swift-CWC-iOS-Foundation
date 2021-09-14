//
//  ContentView.swift
//  lesson14ForEachAndScrollViews
//
//  Created by Sabit Ahmed on 10/9/21.
//

import SwiftUI

struct ContentView: View {
    var array = ["One", "Two", "Three"]
    
    var body: some View {
        
        ScrollView {
            ForEach (array, id: \.self){r in  // Just like List without ListView
                Text(r)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
