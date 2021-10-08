//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 9/9/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipe = [Recipe]()
    @Published var categories = Set<String>()
    @Published var selectedCategory: String?
    
    init() {
        self.recipe = DataService.getLocalData()
        
        self.categories = Set(self.recipe.map({ r in
            return r.category
        }))
        
        self.categories.update(with: Constants.defaultListFilter)
    }
    
    static func getPortions(ingredients:Ingredients, recipeServings:Int, targetServings:Int) ->String {
        
        var portion = ""
        var numerator = ingredients.num ?? 1
        var denominator = ingredients.denom ?? 1
        var wholePortions = 0
        
        if ingredients.num != nil {
            // Get the single serving size by multiplying the denominator with the Recipe serving size
            denominator *= recipeServings
            
            // Get the target portion by multiplying numerator with target serving size
            numerator *= targetServings
            
            // Reduce fraction by greatest common divisor
            let divisor = Rational.greatestCommonDevisor(numerator, denominator)
            numerator /= divisor
            denominator /= divisor
            
            if numerator >= denominator{
                // Calculate whole portions
                wholePortions += numerator/denominator
                
                // Calculate new numerator after generating whole portions
                numerator %= denominator
                
                // Assign to portion strings
                portion += String(wholePortions)
            }
            
            // Express the remainder as a fraction
            if numerator > 0 {
                portion += wholePortions > 0 ? " " : ""
                portion += "\(numerator)/\(denominator)"
            }
            
        }
        
        if var unit = ingredients.unit {
            portion += ingredients.num == nil && ingredients.denom == nil ? "" : " "
            
            if wholePortions > 1 {
                if unit.suffix(1) == "ch" {
                    unit += "es"
                }
                else if unit.suffix(1) == "f" {
                    unit = String(unit.dropLast())
                    unit += "ves"
                }
                else {
                    unit += "s"
                }
            }
            
            return portion + unit
        }
        
        
        return portion
    }
}
