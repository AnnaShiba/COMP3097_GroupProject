import SwiftUI

struct FavoritesView: View {
    @State private var favoriteRecipes: [Recipe] = []
    
    var body: some View {
        NavigationView {
            List {
                if favoriteRecipes.isEmpty {
                    Text("No favorite recipes yet. ❤️")
                        .foregroundColor(.gray)
                        .italic()
                        .padding()
                } else {
                    ForEach(favoriteRecipes) { recipe in
                        NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                            HStack {
                                Image(recipe.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text(recipe.name)
                                        .font(.headline)
                                    Text("⏳ \(recipe.minutes) min • 🍽 \(recipe.servings) servings")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                        }
                    }
                    .onDelete(perform: deleteRecipe)
                }
            }
            .navigationTitle("Favorites")
            .toolbar {
                EditButton()
            }
        }
    }
    
    private func deleteRecipe(at offsets: IndexSet) {
        favoriteRecipes.remove(atOffsets: offsets)
    }
}

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Image(recipe.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(15)
                .padding()
            
            Text(recipe.name)
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 5)
            
            Text("⏳ \(recipe.minutes) min • 🍽 \(recipe.servings) servings")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.bottom, 10)
            
            Text("Ingredients:")
                .font(.headline)
                .padding(.top)
            
            ForEach(recipe.ingredients, id: \..self) { ingredient in
                Text("- " + ingredient)
            }
            
            Text("Instructions:")
                .font(.headline)
                .padding(.top)
            
            ForEach(recipe.instructions, id: \..self) { step in
                Text("• " + step)
                    .padding(.vertical, 2)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Recipe Details")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
