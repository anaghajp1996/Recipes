//
//  RecipesView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        List {
            NavigationLink ( destination: DessertsView()) {
                Text("Desserts")
            }
            }.navigationTitle("Recipes")
        }
    }

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipesView()
        }
    }
}
