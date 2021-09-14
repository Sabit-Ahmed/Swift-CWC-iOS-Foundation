//
//  RecipeModel.swift
//  lesson7MVVM
//
//  Created by Sabit Ahmed on 6/9/21.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipeList = [Recipe]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    let recipeListFromResource = try decoder.decode([Recipe].self, from: data)
                    for r in recipeListFromResource{
                        r.id = UUID()
                    }
                    recipeList.self = recipeListFromResource
                }
                catch {
                    print(error)
                }
                
            }
            catch {
                print(error)
            }
            
        }
    }
    
    func addRecipe() {
    }
}
