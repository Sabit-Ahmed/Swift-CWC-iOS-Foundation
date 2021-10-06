//
//  ContentView.swift
//  M5L8Challenge
//
//  Created by Sabit Ahmed on 6/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex: Int?
    @State var pickerIndex = 4
    
    var body: some View {
        NavigationView {
            VStack{
                Picker(selection: $pickerIndex, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                    ForEach(1..<11) {index in
                        Text("\(index)").tag(index)
                    }
                    
                })
                
                Button(action: {
                    selectedIndex = pickerIndex+1
                }, label: {
                    Text("Go to view \(pickerIndex+1)")
                })
                
                ForEach(1..<11) {index in
                    NavigationLink(
                        destination: DetailView(selectedIndex: $selectedIndex),
                        tag: index,
                        selection: $selectedIndex,
                        label: {})
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
