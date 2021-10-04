//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by Sabit Ahmed on 1/10/21.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        let lesson = model.currentLesson
        let url = URL(string: Constants.videoHostUrl + (lesson?.video ?? ""))
        
        VStack {
            // Only the videos with valid urls
            if url != nil{
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
            // Description
            CodeTextView()
            // Show next lesson button if there is next lesson
            if model.hasNextLesson() {
                Button(action: {
                    // Advance to the next lesson
                    model.nextLesson()
                }, label: {
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.green)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .frame(height: 48)
                        
                        Text("Next Lesson: \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
                            .foregroundColor(Color.white)
                            .bold()
                            
                    }

                })
            }
        }
        .padding()
        .navigationTitle(lesson?.title ?? "")
        
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
