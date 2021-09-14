//
//  ContentView.swift
//  lesson3SwiftUI Lists
//
//  Created by Sabit Ahmed on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    var viewArray = ["List 1", "List 2", "List 3", "List 4", "List 5"]
    
    var body: some View {
        
        NavigationView{
            List (viewArray, id: \.self) {arrayElement in
                NavigationLink(
                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    label: {
                        Text(arrayElement)
                    })
            }.navigationTitle("Navigation Title")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
