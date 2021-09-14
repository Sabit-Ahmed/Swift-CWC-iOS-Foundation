//
//  ContentView.swift
//  lesson7Challenge
//
//  Created by Sabit Ahmed on 7/9/21.
//

import SwiftUI

struct PizzaListView: View {
    @ObservedObject var pizzaInstance = PizzaModel ()
    
    var body: some View {
        VStack {
            
            List(pizzaInstance.pizzaList) {items in
                HStack {
                    Image(items.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(5)
                    
                    VStack(alignment: .leading, spacing: 25.0){
                        Text(items.name)
                            .font(.title)
                            .fontWeight(.bold)
                            
                            
                        
                        HStack(spacing: 20.0){
                            Text(items.toppings[0])
                            Text(items.toppings[1])
                            Text(items.toppings[2])
                            
                        }
                        
                    }
                    
                }
            }
            
            Button("Add Pineapple") {
                pizzaInstance.addPineapple()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView()
    }
}
