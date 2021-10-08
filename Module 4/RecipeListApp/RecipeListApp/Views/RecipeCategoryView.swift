//
//  RecipeCategoryView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 8/10/21.
//

import SwiftUI

struct RecipeCategoryView: View {
    @EnvironmentObject var model: RecipeModel
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categories")
                .bold()
                .padding(.top, 50)
                .font(Font.custom("Avenir Heavy", size: 30))
            
            GeometryReader { geo in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: 20, content: {
                        ForEach(Array(model.categories), id: \.self) { category in
                            Button(action: {
                                // Switch tab to list view
                                selectedTab = Constants.listTab
                                
                                // Set the selected category
                                model.selectedCategory = category
                            }, label: {
                                VStack {
                                    Image(category.lowercased())
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: (geo.size.width - 20) / 2, height: (geo.size.height - 20) / 2)
                                        .cornerRadius(10)
                                        .clipped()
                                    
                                    Text(category)
                                        .foregroundColor(.black)
                                }
                            })
                        }
                    })
                    
                }
            }
        }
    }
}
