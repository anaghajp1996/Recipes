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
            VStack(alignment: .leading) {
                Text(dessert.strMeal).font(.largeTitle).fontWeight(.bold).fixedSize(horizontal: false, vertical: true)
                ImageView(imageURL: $dessert.strMealThumb)
                Text("Instructions").font(.title)
                Text(recipeDetailVM.recipe.strInstructions ?? "").fixedSize(horizontal: false, vertical: true)
                Text("Ingredients").font(.title)
                ForEach ($recipeDetailVM.recipe.ingredients, id: \.self) { ingredient in
                    Text(ingredient.wrappedValue)
                }
            }.padding(20)
            .task {
                recipeDetailVM.getDessertInformation(id: dessert.idMeal)
            }
    }
}

//struct DessertDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DessertDetailsView(dessert: .constant(Dessert(strMeal: "Test meal name", strMealThumb: "1234", idMeal: "52966")))
//    }
//}
