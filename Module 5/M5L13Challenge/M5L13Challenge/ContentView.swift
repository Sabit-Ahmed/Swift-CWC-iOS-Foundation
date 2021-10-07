//
//  ContentView.swift
//  M5L13Challenge
//
//  Created by Sabit Ahmed on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var displayStrings: String?
    
    var body: some View {

        
        VStack(spacing: 20) {
            Text(displayStrings ?? "")
            
            Button (action: {
                getData()
            }, label: {
                Text("Get a new fact!")
            })
        }
        .padding()
            
        
        
    }
    
    func getData() {
        let urlString = "http://numbersapi.com/random/trivia"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { data, response, error in
            
            guard error == nil else {
                return
            }
            
            self.displayStrings = String(data: data!, encoding: .utf8)
        }
        
        dataTask.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
