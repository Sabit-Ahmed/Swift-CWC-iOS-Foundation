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
            Text("Featured View")
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
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
