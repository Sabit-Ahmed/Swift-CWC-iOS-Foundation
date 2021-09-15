//
//  RecipeTabView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 14/9/21.
//

import SwiftUI

struct RecipeTabView: View {
    
    var body: some View {
        TabView {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured View")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Recipe Lists")
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
