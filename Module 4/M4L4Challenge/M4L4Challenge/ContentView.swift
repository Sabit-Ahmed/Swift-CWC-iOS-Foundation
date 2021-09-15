//
//  ContentView.swift
//  M4L4Challenge
//
//  Created by Sabit Ahmed on 15/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Rectangle()
                .foregroundColor(.green)
                .frame(width: geo.size.width, height: geo.size.height/2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    print("Width: \(geo.size.width), Height: \(geo.size.height/2)")
                }
            
            Rectangle()
                .foregroundColor(.red)
                .frame(width: geo.size.width*(2/3), height: geo.size.height/8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .position(x: geo.size.width/2, y: geo.size.height/4)
                .onTapGesture {
                    print("Width: \(geo.size.width*(2/3)), Height: \(geo.size.height/8)")
                }
            
            Rectangle()
                .foregroundColor(.purple)
                .frame(width: geo.size.width/2, height: geo.size.height/2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: geo.size.height/2)
                .onTapGesture {
                    print("Width: \(geo.size.width/2), Height: \(geo.size.height/2)")
                }
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: geo.size.width/2, height: geo.size.height/2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: geo.size.width/2, y: geo.size.height/2)
                .onTapGesture {
                    print("Width: \(geo.size.width/2), Height: \(geo.size.height/2)")
                }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
