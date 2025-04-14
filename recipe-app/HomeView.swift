//
//  HomeView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var manager = RecipeDataManager.shared
    @State private var showAboutView = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Hero banner
                    ZStack(alignment: .bottomLeading) {
                        Image("bowl")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 220)
                            .cornerRadius(15)
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.black.opacity(0.7), Color.black.opacity(0)]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                                .cornerRadius(15)
                            )
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Healthy Food Decider")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("Make healthier food choices, effortlessly")
                                .font(.headline)
                                .foregroundColor(.white.opacity(0.9))
                        }
                        .padding()
                    }
                    .padding(.horizontal)
                    
                    // Featured recipes section
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text("Featured Recipes")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            NavigationLink(destination: DiscoverView()) {
                                Text("See All")
                                    .font(.subheadline)
                                    .foregroundColor(.green)
                            }
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(Array(manager.recipes.prefix(3))) { recipe in
                                    NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                        FeaturedRecipeCard(recipe: recipe)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    // Categories section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Categories")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 15) {
                            ForEach(Array(Set(manager.recipes.map { $0.category })).sorted(), id: \.self) { category in
                                NavigationLink(destination: CategoryView(category: category)) {
                                    CategoryCard(category: category)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    // Quick actions
                    HStack {
                        QuickActionButton(title: "My Favorites", icon: "heart.fill") {
                            // Navigate to favorites tab using NotificationCenter
                            NotificationCenter.default.post(name: NSNotification.Name("switchToTab"), object: nil, userInfo: ["tab": 2])
                        }
                        
                        NavigationLink(destination: AboutView()) {
                            HStack {
                                Image(systemName: "person.3.fill")
                                    .font(.headline)
                                Text("Meet The Team")
                                    .fontWeight(.medium)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green.opacity(0.1))
                            .foregroundColor(.green)
                            .cornerRadius(10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
                .padding(.vertical)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct FeaturedRecipeCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(recipe.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 150)
                .cornerRadius(10)
            
            Text(recipe.name)
                .font(.headline)
                .lineLimit(1)
            
            HStack {
                Image(systemName: "clock")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text("\(recipe.minutes) min")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                if recipe.isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .font(.caption)
                }
            }
        }
        .frame(width: 250)
    }
}

struct CategoryView: View {
    let category: String
    @StateObject private var manager = RecipeDataManager.shared
    
    var filteredRecipes: [Recipe] {
        manager.recipes.filter { $0.category == category }
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))], spacing: 15) {
                ForEach(filteredRecipes) { recipe in
                    NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
        }
        .navigationTitle(category)
    }
}

struct CategoryCard: View {
    let category: String
    
    var imageName: String {
        switch category {
        case "Breakfast": return "blueberry_pancakes"
        case "Main Course": return "shrimp"
        case "Salad": return "quinoa_salad"
        case "Vegetarian": return "buddha_bowl"
        default: return "ranch_chicken"
        }
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 100)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.black.opacity(0.6), Color.clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                        .cornerRadius(10)
                )
            
            Text(category)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.bottom, 8)
        }
    }
}

struct QuickActionButton: View {
    var title: String
    var icon: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: icon)
                    .font(.headline)
                Text(title)
                    .fontWeight(.medium)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green.opacity(0.1))
            .foregroundColor(.green)
            .cornerRadius(10)
        }
    }
}
