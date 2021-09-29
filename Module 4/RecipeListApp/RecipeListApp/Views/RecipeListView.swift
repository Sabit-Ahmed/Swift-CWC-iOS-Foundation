//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 9/9/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                Text("All Recipes")
                    .bold()
                    .padding(.top, 50)
                    .font(Font.custom("Avenir Heavy", size: 30))
                
                ScrollView {
                    
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipe){ r in
                            NavigationLink(
                                destination: RecipeDetailView(recipe: r),
                                label: {
                                    HStack(spacing: 10.0){
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipped()
                                            .cornerRadius(5)
                                        
                                        VStack(alignment: .leading) {
                                            Text(r.name)
                                                .font(Font.custom("Avenir Heavy", size: 16))
                                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                            RecipeHighlightsView(highlights: r.highlights)
                                                .foregroundColor(.black)
                                        }
                                    }
                                })
                            
                        }
                        .navigationBarHidden(true)
                    }
                }
            }
            .padding(.leading)
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
