//
//  DataServices.swift
//  lesson7Challenge
//
//  Created by Sabit Ahmed on 10/9/21.
//

import Foundation

class DataServices {
    static func getLocalData () -> [Pizza] {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Pizza]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let pizzaData = try decoder.decode([Pizza].self, from: data)
                
                for p in pizzaData{
                    p.id = UUID()
                }
                
                return pizzaData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        
        return [Pizza]()
    }
}
