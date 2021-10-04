//
//  ContentView.swift
//  M5L6Challenge
//
//  Created by Sabit Ahmed on 1/10/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    let videoUrl = Bundle.main.url(forResource: "sample", withExtension: "mp4")
    let videoRatio: CGFloat = 1080 / 1920
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(spacing: 10) {
                if videoUrl != nil {
                    VideoPlayer(player: AVPlayer(url: videoUrl!))
                        .frame(height: geo.size.width*videoRatio)
                }

                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Description")
                            .font(Font.custom("Avenir Heavy", size: 30))
                            .padding(.bottom, 5)


                        Text(description)
                            .font(Font.custom("Avenir", size: 20))
                    }
                    .padding()
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
