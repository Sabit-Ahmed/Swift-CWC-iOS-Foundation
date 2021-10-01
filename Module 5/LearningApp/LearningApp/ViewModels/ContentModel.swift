//
//  ContentModel.swift
//  LearningApp
//
//  Created by Sabit Ahmed on 30/9/21.
//

import Foundation

class ContentModel: ObservableObject {
    @Published var modules = [Module]()
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
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
    
}
