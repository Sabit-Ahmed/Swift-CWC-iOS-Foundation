//
//  RecipeDetailView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 10/9/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @State private var selectedServingSize = 4
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Recipe Title
                Text(recipe.name)
                    .bold()
                    .font(Font.custom("Avenir Heavy", size: 30))
                    .padding(.top, 0)
                    .padding(.leading, 15)
                
                VStack(alignment: .leading){
                    // MARK: Recipe Title
                    Text("Ingredients")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .fontWeight(.bold)
                        .padding(.vertical, 5.0)
                    
                    
                    // MARK: Serving Size Picker
                    VStack(alignment: .leading) {
                        Text("Select your serving size:")
                            .font(Font.custom("Avenir", size: 15))
                        
                        Picker("", selection: $selectedServingSize) {
                            Text("2").tag(2)
                            Text("4").tag(4)
                            Text("6").tag(6)
                            Text("8").tag(8)
                        }
                        .font(Font.custom("Avenir", size: 15))
                        .pickerStyle(SegmentedPickerStyle())
                        .frame(width: 160)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    
                    // MARK: Ingredients
                    ForEach(recipe.ingredients) { r in
                        Text("• " + RecipeModel.getPortions(ingredients: r, recipeServings: recipe.servings, targetServings: selectedServingSize) + " " + r.name.lowercased())
                            .font(Font.custom("Avenir", size: 15))
                            
                    }
                    .padding(.bottom, -2.0)
                }
                .padding(.horizontal)
                
                // MARK: Divider
                Divider()
                
                VStack(alignment: .leading){
                    // MARK: Directions
                    Text("Directions")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .fontWeight(.bold)
                        .padding(.vertical, 5.0)
                    
                    ForEach(0..<recipe.directions.count, id:\.self){ r in
                        Text(String(r+1) + ": " + recipe.directions[r])
                            .padding(.bottom, 5)
                            .font(Font.custom("Avenir", size: 15))
                    }
                
                }
                .padding(.horizontal)
                
            }
            
        }
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipe[0])
    }
}
