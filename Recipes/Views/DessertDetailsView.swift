//
//  DessertDetailsView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct DessertDetailsView: View {
    @StateObject private var recipeDetailVM = DessertDetailsViewModel()
    @Binding var dessert: Dessert
    var body: some View {
        ScrollView {
            VStack() {
                Text(dessert.strMeal).font(.largeTitle).multilineTextAlignment(.center)
                ImageView(imageURL: $dessert.strMealThumb)
                VStack(alignment: .leading) {
                    Text("Ingredients").font(.title).padding(.vertical, 10)
                    ForEach ($recipeDetailVM.recipe.ingredients, id: \.self) { ingredient in
                        Text("* " + ingredient.wrappedValue)
                    }
                    Text("Instructions").font(.title).padding(.vertical, 10)
                    Text(recipeDetailVM.recipe.strInstructions ?? "").fixedSize(horizontal: false, vertical: false)
                }
            }.padding(.horizontal, 20)
            .task {
                await recipeDetailVM.getDessertInformation(id: dessert.idMeal)
            }
        }
    }
}
