//
//  RecipeDetailVM.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import Foundation

let getDessertByID = "https://themealdb.com/api/json/v1/1/lookup.php?i="

public class RecipeDetailViewModel: ObservableObject {
    @Published var recipe = Recipe()
    
    @MainActor
    func getDessertInformation(id: String) {
         if let url = URL(string: (getDessertByID + id))  {
             URLSession.shared.dataTask(with: url) {(data, response, error) in
                 if let data = data {
                     if let decodedResponse = try? JSONDecoder().decode([String:[[String:String?]]].self, from: data) {
                        self.recipe = Recipe.init(recipeDetails: decodedResponse["meals"]?.first! ?? ["":""])
                     }
                 }
             }.resume()
         }
     }
}
