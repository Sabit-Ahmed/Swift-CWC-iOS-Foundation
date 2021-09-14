//
//  ContentView.swift
//  lesson7Challenge
//
//  Created by Sabit Ahmed on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pizzaInstance = PizzaModel()
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 15.0){
                ForEach(pizzaInstance.pizzaList){ p in
                    PizzaView(pizza: p)
                }
                
                Button("Add Pineapple") {
                    pizzaInstance.addPineapple()
                }
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
