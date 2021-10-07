//
//  ContentModel.swift
//  LearningApp
//
//  Created by Sabit Ahmed on 30/9/21.
//

import Foundation

class ContentModel: ObservableObject {
    // List of modules
    @Published var modules = [Module]()
    
    // Set the current module
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    // Set the current lesson
    @Published var currentLesson: Lesson?
    var currentLessonIndex = 0
    
    // Set the lesson explanation
    @Published var codeText = NSAttributedString()
    
    // Set the current selected index for contents
    @Published var currentContentSelected: Int?
    
    // Set the current question
    @Published var currentQuestion: Question?
    var currentQuestionIndex = 0
    
    // Set the current selected index for tests
    @Published var currentTestSelected: Int?
    
    // Set the type of style data
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    // MARK: - Data methods
    
    func getLocalData() {
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            // Try to decode the json object into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.modules = modules
        }
        catch {
            // TODO log error
            print("Couldn't parse the loacl data")
        }
        
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do {
            // Read the style file into data object
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
        }
        catch {
            print("Couldn't parse the style data")
        }
    }
    
    // MARK: - Module navigation methods
    
    func beginModule(_ moduleId:Int) {
        // Find the index for the module id
        for index in 0..<modules.count {
            if moduleId == modules[index].id {
                currentModuleIndex = index
                break
            }
        }
        
        // Set the current module
        currentModule = modules[currentModuleIndex]
    }
    
    func beginLesson(_ lessonIndex: Int) {
        
        // Check if the lesson index is in range
        if lessonIndex < currentModule!.content.lessons.count {
            currentLessonIndex = lessonIndex
        }
        
        // Set the current lesson
        currentLesson = currentModule?.content.lessons[currentLessonIndex]
        codeText = addStyling(currentLesson!.explanation)
    }
    
    func hasNextLesson() -> Bool {
        return currentLessonIndex + 1 < currentModule!.content.lessons.count
    }
    
    func nextLesson() {
        currentLessonIndex += 1
        
        if currentModuleIndex < currentModule!.content.lessons.count {
            currentLesson = currentModule?.content.lessons[currentLessonIndex]
            codeText = addStyling(currentLesson!.explanation)
        }
        else {
            currentLessonIndex = 0
            currentLesson = nil
        }
    }
    
    func beginTest(_ moduleId:Int) {
        
        // Set the current module
        beginModule(moduleId)
        
        currentQuestionIndex = 0
        
        // Set the current question
        if currentModule?.test.questions.count ?? 0 > 0 {
            currentQuestion = currentModule?.test.questions[currentQuestionIndex]
            codeText = addStyling(currentQuestion!.content)
        }
    }
    
    func nextQuestion() {
        currentQuestionIndex += 1
        
        if currentQuestionIndex < currentModule!.test.questions.count {
            currentQuestion = currentModule?.test.questions[currentQuestionIndex]
            codeText = addStyling(currentQuestion!.content)
        }
        else {
            currentQuestionIndex = 0
            currentQuestion = nil
        }
    }
    
    // MARK: - Code styling helper
    private func addStyling(_ htmlString:String) -> NSAttributedString {
        var resultString = NSAttributedString()
        var data = Data()
        
        // Add styling data
        if styleData != nil {
            data.append(styleData!)
        }
        
        // Add html data
        data.append(Data(htmlString.utf8))
        
        // Convert to the attributed string
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            resultString = attributedString
        }
        
        return resultString
    }
    
}
