//
//  Pizza.swift
//  lesson7Challenge
//
//  Created by Sabit Ahmed on 7/9/21.
//

import Foundation

class Pizza: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var image:String
    var toppings:[String] = [String]()
}
