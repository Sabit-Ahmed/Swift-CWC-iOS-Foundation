//
//  RecipeFeaturedView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 15/9/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model: RecipeModel
    @State var isDetailView = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Featured Recipes")
                .bold()
                .font(.largeTitle)
                .padding(.leading, 20.0)
                .padding(.top, 40)
            
            GeometryReader { geo in
                TabView {
                    
                    // Loop through each recipe
                    ForEach(0..<model.recipe.count) {i in
                        
                        // Only featured recipes
                        if model.recipe[i].featured {
                            
                            // MARK: Recipe card
                            
                            Button(action: {
                                isDetailView = true
                            }, label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                    
                                    VStack(spacing: 0.0) {
                                        Image(model.recipe[i].image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .clipped()
                                        
                                        Text(model.recipe[i].name)
                                            .padding(5)
                                    }
                                        
                                }
                            })
                            .sheet(isPresented: $isDetailView){
                                RecipeDetailView(recipe: model.recipe[i])
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -5, y: 6)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Preparation Time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights:")
                    .font(.headline)
                Text("Healthy, Smoothy")
            }
            .padding([.leading, .bottom], 20.0)
            
        }
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
