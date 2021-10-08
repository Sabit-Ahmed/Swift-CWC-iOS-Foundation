//
//  RecipeTabView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 14/9/21.
//

import SwiftUI

struct RecipeTabView: View {
    @State var selectedTab = Constants.featuredTab
    
    var body: some View {
        TabView(selection: $selectedTab) {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured View")
                    }
                }
                .tag(Constants.featuredTab)
            
            RecipeCategoryView(selectedTab: $selectedTab)
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.2x2")
                        Text("Category View")
                    }
                }
                .tag(Constants.categoryTab)
            
            RecipeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Recipe Lists")
                }
                .tag(Constants.listTab)
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
