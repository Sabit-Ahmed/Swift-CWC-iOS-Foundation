//
//  ContentView.swift
//  M4L7Challenge
//
//  Created by Sabit Ahmed on 16/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            TabView {
                
                    ForEach(0..<50) { i in
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(.sRGB, red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1), opacity: 0.8))
                                
                            
                            Image(systemName: String(i+1)+".circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipped()
                                .padding(50)
                        }
                        .frame(width: geo.size.width - 30, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(20)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -10, y: 10)
                        
                    }
  
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
