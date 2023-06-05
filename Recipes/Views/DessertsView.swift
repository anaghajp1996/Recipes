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
            NavigationLink ( destination: DessertDetailsView()) {
                Text("Desserts")
                }
            }.navigationTitle("Desserts")
        }
    }


struct DessertsView_Previews: PreviewProvider {
    static var previews: some View {
        DessertsView()
    }
}
