//
//  FavoritesView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Your Favorite Recipes ❤️")
                    .font(.title)
                    .padding()
            }
            .navigationTitle("Favorites")
        }
    }
}


#Preview {
    FavoritesView()
}
