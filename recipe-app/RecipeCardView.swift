//
//  RecipeCardView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(recipe.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .clipped()
                .cornerRadius(10)

            Text(recipe.name)
                .font(.headline)
            
            HStack {
                Label("\(recipe.servings) Servings", systemImage: "person.2")
                Label("\(recipe.likes) Likes", systemImage: "hand.thumbsup")
                Label("\(recipe.minutes) Mints", systemImage: "clock")
            }
            .font(.subheadline)
            
            .padding()
        }
        .background(Color(red: 192/255, green: 255/255, blue: 192/255))
        .cornerRadius(20)
        .shadow(radius: 3)
    }
}

