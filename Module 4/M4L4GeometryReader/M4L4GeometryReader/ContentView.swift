//
//  ContentView.swift
//  M4L4GeometryReader
//
//  Created by Sabit Ahmed on 15/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Rectangle()
//            .frame(width: 100.0, height: 100.0)
        // We don't want this type of fixed sized rectangle, rather use GeometryReader
        GeometryReader { geo in
            VStack{
                Rectangle()
                    .frame(width: geo.size.width/4, height: geo.size.height/8)
                    .onTapGesture {
                        print("Geometry 1 --> global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("Geometry 1 --> local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geo.size.width/4, height: geo.size.height)
                    .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            }
            
        }
        
        GeometryReader { geo in
            VStack{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width/4, height: geo.size.height/8)
                    .onTapGesture {
                        print("Geometry 2 --> global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("Geometry 2 --> local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
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
