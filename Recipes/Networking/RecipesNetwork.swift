//
//  RecipesNetwork.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import Foundation

let getDesserts = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
let getDessertByID = "https://themealdb.com/api/json/v1/1/lookup.php?i="



struct RecipesNetwork {
    static func getDessertsList() {
        guard let url = URL(string: getDesserts) else { return }
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { print("Some error"); return }
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    print(decodedResponse.meals)
                    return
                } else {
                    print("Error")
                }
        }.resume()
    }
}
