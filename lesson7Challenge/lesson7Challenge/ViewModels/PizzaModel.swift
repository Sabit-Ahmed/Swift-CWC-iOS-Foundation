//
//  PizzaModel.swift
//  lesson7Challenge
//
//  Created by Sabit Ahmed on 7/9/21.
//

import Foundation

class PizzaModel: ObservableObject{
    @Published var pizzaList = [Pizza]()
    
    init() {
//        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
//        if let path = pathString {
//            let url = URL(fileURLWithPath: path)
//
//            do {
//                let data = try Data(contentsOf: url)
//                let decoder = JSONDecoder()
//
//                do {
//                    let recipeListFromResource = try decoder.decode([Pizza].self, from: data)
//                    for r in recipeListFromResource{
//                        r.id = UUID()
//                    }
//                    pizzaList.self = recipeListFromResource
//                }
//                catch {
//                    print(error)
//                }
//
//            }
//            catch {
//                print(error)
//            }
//
//        }
        
        // Rather than use codes directly in ViewModel, let's call the class from here
        pizzaList.self = DataServices.getLocalData()
        
    }
    
    func addPineapple(){
        for i in 0...pizzaList.count-1 {
            for _ in 0...pizzaList[1].toppings.count-1{
                pizzaList[i].toppings[0] = "Pineapple"
            }
            
        }
        pizzaList.shuffle()
    }
    
}
