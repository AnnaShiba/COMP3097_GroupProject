//
//  RecipeDetailView.swift
//  recipe-app
//
//  Created by harry on 25/01/1404 AP.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    @StateObject private var manager = RecipeDataManager.shared
    @State private var selectedSegment = 0
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                // Header image with favorite button
                ZStack(alignment: .topTrailing) {
                    Image(recipe.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                    
                    Button(action: {
                        manager.toggleFavorite(for: recipe)
                    }) {
                        Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
                            .font(.title)
                            .foregroundColor(recipe.isFavorite ? .red : .white)
                            .padding(12)
                            .background(
                                Circle()
                                    .fill(Color.black.opacity(0.5))
                            )
                            .padding(20)
                    }
                }
                
                // Recipe info
                VStack(alignment: .leading, spacing: 16) {
                    Text(recipe.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(recipe.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 5)
                    
                    HStack(spacing: 20) {
                        RecipeInfoBadge(icon: "clock", value: "\(recipe.minutes)", label: "Minutes")
                        RecipeInfoBadge(icon: "person.2.fill", value: "\(recipe.servings)", label: "Servings")
                        RecipeInfoBadge(icon: "heart.fill", value: "\(recipe.likes)", label: "Likes")
                    }
                    .padding(.vertical, 10)
                    
                    Divider()
                    
                    // Segmented control for ingredients and instructions
                    Picker("", selection: $selectedSegment) {
                        Text("Ingredients").tag(0)
                        Text("Instructions").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.vertical, 8)
                    
                    if selectedSegment == 0 {
                        // Ingredients section
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Ingredients")
                                .font(.headline)
                                .padding(.top, 5)
                            
                            ForEach(recipe.ingredients, id: \.self) { ingredient in
                                HStack(alignment: .top) {
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 8, height: 8)
                                        .padding(.top, 6)
                                    
                                    Text(ingredient)
                                        .padding(.leading, 4)
                                }
                            }
                        }
                    } else {
                        // Instructions section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Instructions")
                                .font(.headline)
                                .padding(.top, 5)
                            
                            ForEach(Array(recipe.instructions.enumerated()), id: \.offset) { index, instruction in
                                HStack(alignment: .top) {
                                    Text("\(index + 1)")
                                        .font(.subheadline)
                                        .foregroundColor(.white)
                                        .frame(width: 24, height: 24)
                                        .background(Circle().fill(Color.teal))
                                    
                                    Text(instruction)
                                        .padding(.leading, 8)
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeInfoBadge: View {
    var icon: String
    var value: String
    var label: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(.green)
            Text(value)
                .fontWeight(.semibold)
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}
