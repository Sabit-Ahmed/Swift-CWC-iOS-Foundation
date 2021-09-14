//
//  ContentView.swift
//  lesson9Challenge
//
//  Created by Sabit Ahmed on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var array:[String]?
    
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    array = nil
                }, label: {
                    Text("Button 1")
                })
                
                Button(action: {
                    array = [String]()
                    array?.append("String 1")
                    array?.append("String 2")
                    array?.append("String 3")
                }, label: {
                    Text("Button 2")
                })
                
            }
            if let newArray = array {
                List(newArray, id: \.self){ element in
                    Text(element)
                }
            }
            else {
                Text("Tap Button 2 for insert")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
