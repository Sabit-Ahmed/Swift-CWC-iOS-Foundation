//
//  TestResultView.swift
//  LearningApp
//
//  Created by Sabit Ahmed on 7/10/21.
//

import SwiftUI

struct TestResultView: View {
    @EnvironmentObject var model: ContentModel
    var numCorrect: Int?
    
    var body: some View {
        VStack {
            Spacer()
            Text("Doing great!")
            
            Spacer()
            Text("You got \(numCorrect!) out of \(model.currentModule?.test.questions.count ?? 0) questions")
            
            Spacer()
            Button(action: {
                // Set the next test as the current test upon completion
                model.currentTestSelected = nil
            }, label: {
                ZStack {
                    RectangleCard(color: Color.green)
                    
                    Text("Complete")
                        .bold()
                        .foregroundColor(.white)
                }
                .padding()
            })
            Spacer()
        }
    }
}

