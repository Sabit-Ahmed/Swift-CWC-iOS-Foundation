//
//  SecondView.swift
//  L8NavigationLink
//
//  Created by Sabit Ahmed on 5/10/21.
//

import SwiftUI

struct SecondView: View {
    @Binding var selectedIndex: Int?
    
    var body: some View {
        
        VStack {
            Text("Some texts")
            
            Button(action: {
                selectedIndex = nil
            }, label: {
                Text("Navigate Back")
            })
        }
    }
}

