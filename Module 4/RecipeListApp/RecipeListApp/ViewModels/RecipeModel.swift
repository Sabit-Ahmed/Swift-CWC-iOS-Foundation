//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 9/9/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipe = [Recipe]()
    
    init() {
        recipe.self = DataService.getLocalData()
    }
    
    static func getPortions(ingredients:Ingredients, recipeServings:Int, targetServings:Int) ->String {
        
        // Get the single serving size by multiplying the denominator with the Recipe serving size
        
        // Get the target portion by multiplying numerator with target serving size
        
        // Reduce fraction by greatest common divisor
        
        // Express the remainder as a fraction 
        
        return String(targetServings)
    }
}
