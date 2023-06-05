//
//  DessertsView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct DessertsView: View {
    var body: some View {
        List {
            
            }.navigationTitle("Desserts")
            .onAppear() {
                RecipesNetwork.getDessertsList()
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
