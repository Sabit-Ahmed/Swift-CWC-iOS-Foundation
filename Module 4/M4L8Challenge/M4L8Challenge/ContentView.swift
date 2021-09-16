//
//  ContentView.swift
//  M4L8Challenge
//
//  Created by Sabit Ahmed on 16/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            ScrollView {
                LazyVStack {
                    ForEach(0..<60) { index in
                        Rectangle()
                            .fill(RadialGradient(gradient: Gradient(colors: [Color.orange, Color.red]), center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius: 200))
                            .frame(width: geo.size.width - 30, height: pow(1.1, CGFloat(index)), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                    }
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
