//
//  PizzaView.swift
//  lesson7Challenge
//
//  Created by Sabit Ahmed on 10/9/21.
//

import SwiftUI

struct PizzaView: View {
    var pizza:Pizza
    
    var body: some View {
            
        HStack() {
            Image(pizza.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(5)
            
            VStack(alignment: .leading, spacing: 5.0){
                Text(pizza.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    
                    
                
                HStack(spacing: 20.0){
                    ForEach(pizza.toppings, id:\.self){i in
                        Text(i)
                    }
                    
                }
                
            }
            
        }
        
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = PizzaModel()
        PizzaView(pizza: model.pizzaList[0])
    }
}
