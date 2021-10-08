//
//  ContentView.swift
//  M5WrapUpChallenge
//
//  Created by Sabit Ahmed on 8/10/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var contents: ListContentModel
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
  
            List {
                SearchBar(text: $searchText)
                
                ForEach(contents.filteredContents) { item in
                    NavigationLink(
                        destination: ContentDetailView(item: item),
                        label: {
                            Text(item.title)
                        })
                    
                }
                
            }
            .navigationTitle("All Videos")
            .onChange(of: searchText, perform: { text in
                contents.filterVideos(text)
            })

        }
        
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ListContentModel())
    }
}
