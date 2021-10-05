//
//  ContentView.swift
//  L8NavigationLink
//
//  Created by Sabit Ahmed on 5/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex: Int?
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 20){
                NavigationLink(
                    destination: SecondView(selectedIndex: $selectedIndex)
                        .onAppear(perform: {
                            print(selectedIndex)
                        }),
                    tag: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/,
                    selection: $selectedIndex,
                    label: {Text("Navigation Link 1")})
                
                NavigationLink(
                    destination: SecondView(selectedIndex: $selectedIndex)
                        .onAppear(perform: {
                            print(selectedIndex)
                        }),
                    tag: 2,
                    selection: $selectedIndex,
                    label: {Text("Navigation Link 2")})
            }
    
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
