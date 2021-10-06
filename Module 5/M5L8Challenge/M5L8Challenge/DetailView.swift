//
//  DetailView.swift
//  M5L8Challenge
//
//  Created by Sabit Ahmed on 6/10/21.
//

import SwiftUI

struct DetailView: View {
    @Binding var selectedIndex: Int?
    
    var body: some View {
        VStack{
            Text("I'm view \(selectedIndex ?? 0)")
            
            Button(action: {
                selectedIndex = nil
            }, label: {
                Text("Go back")
            })
        }
        .navigationBarHidden(true)
    }
}

