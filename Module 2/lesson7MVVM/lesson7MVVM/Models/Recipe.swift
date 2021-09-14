//
//  Recipe.swift
//  lesson7MVVM
//
//  Created by Sabit Ahmed on 6/9/21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name = ""
    var cuisine = ""
}
