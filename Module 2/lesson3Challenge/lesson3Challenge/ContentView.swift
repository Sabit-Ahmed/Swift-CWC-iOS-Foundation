//
//  ContentView.swift
//  lesson3SwiftUI Lists
//
//  Created by Sabit Ahmed on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    var viewArray = ["List 1", "List 2", "List 3", "List 4", "List 5"]
    @State var newArray:[String] = [String]()
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                List (newArray, id: \.self) {arrayElement in
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text(arrayElement)
                        })
                }.navigationTitle("Navigation Title")
                
                Button(action: {
                    newArray.append(viewArray[Int.random(in: 0...4)])
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
