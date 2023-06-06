//
//  InstructionsView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct InstructionsView: View {
    @Binding var instructions: String
    @Binding var ingredients: [String]
    var body: some View {
        VStack {
            Text("Instructions").font(.title)
            Text(instructions ?? "No Instructions Found").fixedSize(horizontal: false, vertical: true)
            Text("Ingredients").font(.title)
            ForEach ($ingredients, id: \.self) { ingredient in
                Text(ingredient.wrappedValue)
            }
        }
    }
}

//struct InstructionsView_Previews: PreviewProvider {
//    static var previews: some View {
//        InstructionsView()
//    }
//}
