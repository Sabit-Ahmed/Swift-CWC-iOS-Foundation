//
//  ContentView.swift
//  lesson7MVVM
//
//  Created by Sabit Ahmed on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var recipeModel = RecipeModel ()
    
    var body: some View {
        
        VStack {
            List(recipeModel.recipeList) {item in
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                    Text(item.cuisine)
                        .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    
                }
            }
            
            Button("Add Recipe") {
                recipeModel.addRecipe()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
