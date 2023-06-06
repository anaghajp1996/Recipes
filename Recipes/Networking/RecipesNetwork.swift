//
//  RecipesNetwork.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import Foundation

let getDesserts = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"

public class RecipeNetworkViewModel: ObservableObject {
  @Published var desserts = [Dessert]()
    
   @MainActor
   func getDessertsList() {
        if let url = URL(string: getDesserts)  {
            URLSession.shared.dataTask(with: url) {(data, response, error) in
                if let data = data {
                    if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                        self.desserts = decodedResponse.meals
                    }
                }
            }.resume()
        }
    }
}
