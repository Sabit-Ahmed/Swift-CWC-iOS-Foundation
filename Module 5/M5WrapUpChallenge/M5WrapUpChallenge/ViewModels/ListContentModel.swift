//
//  ListContentModel.swift
//  M5WrapUpChallenge
//
//  Created by Sabit Ahmed on 8/10/21.
//

import Foundation

class ListContentModel: ObservableObject {
    var listContents = [ListContent]()
    @Published var filteredContents = [ListContent]()
    
    init() {
        self.getData()
    }
    
    func filterVideos(_ searchText: String) {
        filteredContents = listContents.filter({ searchText.isEmpty ? true : $0.title.localizedCaseInsensitiveContains(searchText) })
    }
    
    func getData() {
        let urlString = "https://codewithchris.github.io/Module5Challenge/Data.json"
 
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { data, response, error in
            guard error == nil else {
                return
            }
            let jsonDecoder = JSONDecoder()
            do {
                let contents = try jsonDecoder.decode([ListContent].self, from: data!)
                
                self.listContents = contents
                
                DispatchQueue.main.async {
                    self.filteredContents = contents
                }
                
            }
            catch {
                print("Couldn't parse the json data")
            }
            
        }
        dataTask.resume()
    }
}
