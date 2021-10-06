//
//  TestView.swift
//  LearningApp
//
//  Created by Sabit Ahmed on 6/10/21.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        if model.currentQuestion != nil {
            VStack {
                // Question number
                Text("Qustion \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                // Question
                CodeTextView()
                // Answer
                
                // Button
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
        }
        else {
            ProgressView()
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
