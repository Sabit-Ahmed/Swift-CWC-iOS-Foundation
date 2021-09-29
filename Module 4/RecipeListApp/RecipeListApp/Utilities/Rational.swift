//
//  Rational.swift
//  RecipeListApp
//
//  Created by Sabit Ahmed on 29/9/21.
//

import Foundation

struct Rational {
    static func greatestCommonDevisor (_ a:Int, _ b:Int) -> Int {
        // GCD (0, b) = b
        if a == 0 {
            return b
        }
        // GCD(a, 0) = a
        if b == 0 {
            return a
        }
        // Otherwise GCD(a, b) = GCD(b, remainder)
        return greatestCommonDevisor( b, a % b)
    }
}
