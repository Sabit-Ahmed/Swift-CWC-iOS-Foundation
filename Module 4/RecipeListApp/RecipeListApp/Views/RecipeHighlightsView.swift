//
//  RecipeHighlightsView.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 29/9/21.
//

import SwiftUI

struct RecipeHighlightsView: View {
    
    var allHighlights = ""
    
    init(highlights: [String]) {
        for i in 0..<highlights.count {
            if i == highlights.count - 1 {
                allHighlights += highlights[i]
            }
            else {
                allHighlights += highlights[i] + ", "
            }
        }
    }
    
    var body: some View {
        Text(allHighlights)
            .font(Font.custom("Avenir", size: 15))
    }
}

struct RecipeHighlightsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlightsView(highlights: ["test1", "test2", "test3"])
    }
}
