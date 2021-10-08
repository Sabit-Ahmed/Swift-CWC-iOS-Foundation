//
//  ListContent.swift
//  M5WrapUpChallenge
//
//  Created by Sabit Ahmed on 8/10/21.
//

import Foundation

struct ListContent: Decodable, Identifiable {
    var id: Int
    var title: String
    var url: String
}
