//
//  ContentDetailView.swift
//  M5WrapUpChallenge
//
//  Created by Sabit Ahmed on 8/10/21.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    var item: ListContent
    var aspectRatio: CGFloat = 1080 / 1920
    var body: some View {
        let itemUrl = URL(string: item.url)
        
        GeometryReader { geo in
            VStack(spacing: 25) {
                Text(item.title)
                    .font(.title)
                    .bold()
                    
                
                VideoPlayer(player: AVPlayer(url: itemUrl!))
                    .cornerRadius(10)
                    .frame(height: geo.size.width * aspectRatio)
            }
            .padding()
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView(item: ListContent(id: 1, title: "How To Make An App for Beginners 2021 / SwiftUI - Lesson 1", url: "https://codewithchris.github.io/Module5Challenge/Lesson%201.mp4"))
    }
}
