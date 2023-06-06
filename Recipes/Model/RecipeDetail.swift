//
//  RecipeDetail.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import Foundation

struct Recipe : Codable {
    var idMeal: String?
    var strInstructions: String?
    var ingredients: [String] = []
    
    init(){}
    
    init(recipeDetails: [String: String?]) {
        var ingredientsList: [String] = []
        
        // Add all values containing 'strIngredient' into ingredients
        for (key, value) in recipeDetails {
            if key.starts(with: "strIngredient") {
                if let value = value {
                    if value.isEmpty { return } 
                    ingredientsList.append(value)
                }
            }
        }
        self.strInstructions = recipeDetails["strInstructions"] ?? ""
        self.ingredients = ingredientsList
        self.idMeal  = recipeDetails["idMeal"] ?? ""
    }
}
