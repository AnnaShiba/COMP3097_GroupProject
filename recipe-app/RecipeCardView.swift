//
//  RecipeCardView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    @StateObject private var manager = RecipeDataManager.shared
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topTrailing) {
                Image(recipe.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 180)
                    .clipped()
                    .cornerRadius(10, corners: [.topLeft, .topRight])
                
                Button(action: {
                    manager.toggleFavorite(for: recipe)
                }) {
                    Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
                        .font(.title2)
                        .foregroundColor(recipe.isFavorite ? .red : .white)
                        .padding(8)
                        .background(
                            Circle()
                                .fill(Color.black.opacity(0.5))
                        )
                        .padding(10)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(recipe.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                
                Text(recipe.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .padding(.bottom, 5)
                
                HStack {
                    Label("\(recipe.servings)", systemImage: "person.2")
                        .font(.caption)
                    
                    Spacer()
                    
                    Label("\(recipe.likes)", systemImage: "hand.thumbsup")
                        .font(.caption)
                    
                    Spacer()
                    
                    Label("\(recipe.minutes) min", systemImage: "clock")
                        .font(.caption)
                }
                .foregroundColor(.secondary)
            }
            .padding(12)
        }
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 2)
        .padding(.vertical, 5)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCornerShape(radius: radius, corners: corners))
    }
}

struct RoundedCornerShape: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
