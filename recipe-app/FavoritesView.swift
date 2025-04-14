import SwiftUI

struct FavoritesView: View {
    @StateObject private var manager = RecipeDataManager.shared
    
    var body: some View {
        NavigationView {
            VStack {
                if manager.favorites.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: "heart.slash")
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                        
                        Text("No favorite recipes yet")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text("Start adding your favorite recipes by tapping the heart icon")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                        
                        NavigationLink(destination: DiscoverView()) {
                            Text("Explore Recipes")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(10)
                                .padding(.top, 20)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    List {
                        ForEach(manager.favorites) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                HStack(spacing: 15) {
                                    Image(recipe.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 70, height: 70)
                                        .cornerRadius(10)
                                    
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(recipe.name)
                                            .font(.headline)
                                        
                                        Text(recipe.category)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                        
                                        Text("⏳ \(recipe.minutes) min • 🍽 \(recipe.servings) servings")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                            .swipeActions {
                                Button(role: .destructive) {
                                    manager.toggleFavorite(for: recipe)
                                } label: {
                                    Label("Remove", systemImage: "heart.slash")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}
