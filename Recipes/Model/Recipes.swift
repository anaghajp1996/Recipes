//
//  Recipes.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import Foundation

struct Response: Decodable {
    var meals: [Dessert]
}

struct Dessert : Decodable {
    var strMeal: String
    var strMealThumb: String
    var idMeal: String
}
