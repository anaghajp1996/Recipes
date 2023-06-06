//
//  DessertDetailsView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct DessertDetailsView: View {
    @StateObject private var recipeDetailVM = RecipeDetailViewModel()
    @Binding var dessert: Dessert
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ImageView(imageURL: $dessert.strMealThumb)
                    Text("Ingredients").font(.title)
                    ForEach ($recipeDetailVM.recipe.ingredients, id: \.self) { ingredient in
                        Text("*" + ingredient.wrappedValue)
                    }
                    Text("Instructions").font(.title)
                    Text(recipeDetailVM.recipe.strInstructions ?? "").fixedSize(horizontal: false, vertical: false)
                }.padding(20)
                .task {
                    await recipeDetailVM.getDessertInformation(id: dessert.idMeal)
                }
            }
        }.navigationTitle(dessert.strMeal)
            .navigationBarTitleDisplayMode(.inline)
    }
}
