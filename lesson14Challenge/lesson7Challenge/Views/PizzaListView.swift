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
        ScrollView {
            
            VStack(alignment: .leading) {
                ForEach(pizzaInstance.pizzaList) {items in
                    HStack() {
                        Image(items.image)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipped()
                            .cornerRadius(5)
                        
                        VStack(alignment: .leading, spacing: 5.0){
                            Text(items.name)
                                .font(.headline)
                                .fontWeight(.bold)
                                
                                
                            
                            HStack(spacing: 20.0){
                                ForEach(items.toppings, id:\.self){i in
                                    Text(i)
                                }
                                
                            }
                            
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
