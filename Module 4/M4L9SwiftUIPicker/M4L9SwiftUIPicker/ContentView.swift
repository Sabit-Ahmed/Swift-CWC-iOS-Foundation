//
//  ContentView.swift
//  M4L9SwiftUIPicker
//
//  Created by Sabit Ahmed on 16/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 2
    
    var body: some View {
        VStack {
            Picker ("Tap Me!", selection: $selectedIndex) {
                Text("Option 1").tag(1)
                Text("Option 2").tag(2)
                Text("Option 3").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("You've picked \(selectedIndex)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
