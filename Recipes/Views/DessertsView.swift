//
//  DessertsView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct DessertsView: View {
    @StateObject private var recipesVM = RecipeNetworkViewModel()
    var body: some View {
        List ($recipesVM.desserts, id: \.idMeal) { $dessert in
            NavigationLink ( destination: DessertDetailsView(dessert: $dessert)) {
                Text(dessert.strMeal)
            }
        }.navigationTitle("Desserts")
        .task {
            recipesVM.getDessertsList()
        }
    }
}


struct DessertsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DessertsView()
        }
    }
}
