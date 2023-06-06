//
//  ImageView.swift
//  Recipes
//
//  Created by Anagha K J on 05/06/23.
//

import SwiftUI

struct ImageView: View {
    @Binding var imageURL: String
    var body: some View {
        AsyncImage(url: URL(string: imageURL), scale: 2)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageURL: .constant("https://www.themealdb.com//images//media//meals//1549542877.jpg"))
    }
}
