//
//  RecipeData.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import Foundation

class RecipeDataManager: ObservableObject {
    static let shared = RecipeDataManager()
    
    @Published var recipes: [Recipe] = [
        Recipe(
            name: "Mardi Gras Shrimp Étouffée",
            imageName: "shrimp",
            servings: 4,
            likes: 127,
            minutes: 90,
            ingredients: [
                "1 pound shrimp, peeled and deveined",
                "1/4 cup butter",
                "2 tablespoons all-purpose flour",
                "1 onion, diced",
                "1 green bell pepper, diced",
                "2 celery stalks, diced",
                "3 cloves garlic, minced",
                "1 cup seafood stock",
                "1 tablespoon Cajun seasoning",
                "Salt and pepper to taste",
                "2 green onions, sliced",
                "2 tablespoons fresh parsley, chopped",
                "Hot sauce to taste",
                "Cooked rice for serving"
            ],
            instructions: [
                "Melt butter in a large skillet over medium heat",
                "Add flour and cook, stirring constantly until golden brown (about 5 minutes) to make a roux",
                "Add onion, bell pepper, celery, and garlic. Cook until vegetables are soft (about 8 minutes)",
                "Pour in seafood stock and bring to a simmer",
                "Add Cajun seasoning, salt, and pepper",
                "Simmer for 15 minutes until slightly thickened",
                "Add shrimp and cook until pink and cooked through (about 5 minutes)",
                "Stir in green onions and parsley",
                "Serve hot over rice with hot sauce on the side"
            ],
            category: "Main Course",
            description: "A classic Louisiana dish with tender shrimp in a rich, flavorful sauce served over rice. Perfect for a special dinner!"
        ),
        Recipe(
            name: "Slow Cooker Ranch Chicken",
            imageName: "ranch_chicken",
            servings: 6,
            likes: 98,
            minutes: 185,
            ingredients: [
                "2 pounds boneless, skinless chicken breasts",
                "1 packet ranch seasoning mix",
                "1 can cream of chicken soup",
                "1/2 cup chicken broth",
                "4 oz cream cheese, softened",
                "2 tablespoons butter",
                "1/2 teaspoon garlic powder",
                "Salt and pepper to taste",
                "Fresh parsley for garnish",
                "Cooked pasta or rice for serving"
            ],
            instructions: [
                "Place chicken breasts in slow cooker",
                "In a bowl, mix ranch seasoning, cream of chicken soup, and chicken broth",
                "Pour mixture over chicken in slow cooker",
                "Cook on low for 6-7 hours or high for 3-4 hours",
                "30 minutes before serving, shred chicken with two forks",
                "Add cream cheese and butter, stir until melted and well combined",
                "Season with garlic powder, salt, and pepper",
                "Let cook for remaining time until thickened",
                "Serve over pasta or rice and garnish with fresh parsley"
            ],
            category: "Main Course",
            description: "Creamy, tender shredded chicken with ranch flavor that's perfect for busy weeknights. This versatile dish works great over pasta, rice, or as a sandwich filling."
        ),
        Recipe(
            name: "Mediterranean Quinoa Salad",
            imageName: "quinoa_salad",
            servings: 4,
            likes: 84,
            minutes: 25,
            ingredients: [
                "1 cup quinoa, rinsed",
                "2 cups water or vegetable broth",
                "1 cucumber, diced",
                "1 red bell pepper, diced",
                "1/2 red onion, finely diced",
                "1 cup cherry tomatoes, halved",
                "1/2 cup kalamata olives, pitted and sliced",
                "1/2 cup feta cheese, crumbled",
                "1/4 cup fresh parsley, chopped",
                "3 tablespoons olive oil",
                "2 tablespoons lemon juice",
                "1 teaspoon dried oregano",
                "Salt and pepper to taste"
            ],
            instructions: [
                "Bring water or broth to a boil in a medium saucepan",
                "Add quinoa, reduce heat to low, cover and simmer for 15 minutes",
                "Remove from heat and let stand for 5 minutes, then fluff with a fork",
                "Transfer quinoa to a large bowl and let cool to room temperature",
                "Add cucumber, bell pepper, red onion, tomatoes, olives, and parsley",
                "In a small bowl, whisk together olive oil, lemon juice, oregano, salt, and pepper",
                "Pour dressing over salad and toss to combine",
                "Gently fold in feta cheese",
                "Chill for at least 30 minutes before serving for best flavor"
            ],
            category: "Salad",
            description: "A refreshing and nutritious Mediterranean-inspired salad with protein-rich quinoa, crisp vegetables, and tangy feta cheese. Perfect for meal prep or as a side dish."
        ),
        Recipe(
            name: "Blueberry Lemon Pancakes",
            imageName: "blueberry_pancakes",
            servings: 4,
            likes: 112,
            minutes: 30,
            ingredients: [
                "2 cups all-purpose flour",
                "2 tablespoons sugar",
                "1 tablespoon baking powder",
                "1/2 teaspoon salt",
                "2 eggs",
                "1 3/4 cups milk",
                "2 tablespoons lemon zest",
                "1/4 cup lemon juice",
                "1/4 cup melted butter",
                "1 teaspoon vanilla extract",
                "1 1/2 cups fresh blueberries",
                "Maple syrup for serving",
                "Additional butter for cooking"
            ],
            instructions: [
                "In a large bowl, whisk together flour, sugar, baking powder, and salt",
                "In another bowl, beat eggs and add milk, lemon zest, lemon juice, melted butter, and vanilla extract",
                "Pour wet ingredients into dry ingredients and stir until just combined (lumps are okay)",
                "Gently fold in blueberries",
                "Heat a griddle or non-stick pan over medium heat and add a small amount of butter",
                "Pour 1/4 cup batter for each pancake onto hot griddle",
                "Cook until bubbles form on surface, about 2-3 minutes",
                "Flip and cook until golden brown, about 1-2 minutes more",
                "Serve warm with maple syrup and additional butter if desired"
            ],
            category: "Breakfast",
            description: "Light and fluffy pancakes bursting with fresh blueberries and bright lemon flavor. These pancakes are the perfect weekend breakfast treat!"
        ),
        Recipe(
            name: "Roasted Vegetable Buddha Bowl",
            imageName: "buddha_bowl",
            servings: 2,
            likes: 76,
            minutes: 45,
            ingredients: [
                "1 sweet potato, diced",
                "1 cup broccoli florets",
                "1 red bell pepper, sliced",
                "1 zucchini, sliced",
                "1 cup chickpeas, drained and rinsed",
                "2 tablespoons olive oil",
                "1 teaspoon cumin",
                "1 teaspoon paprika",
                "Salt and pepper to taste",
                "1 cup cooked quinoa",
                "1 avocado, sliced",
                "2 tablespoons tahini",
                "1 tablespoon lemon juice",
                "1 tablespoon water",
                "1 garlic clove, minced",
                "Fresh cilantro for garnish"
            ],
            instructions: [
                "Preheat oven to 425°F (220°C)",
                "Toss sweet potato, broccoli, bell pepper, zucchini, and chickpeas with olive oil, cumin, paprika, salt, and pepper",
                "Spread on a baking sheet and roast for 25-30 minutes, stirring halfway through",
                "While vegetables are roasting, cook quinoa according to package instructions",
                "In a small bowl, whisk together tahini, lemon juice, water, and minced garlic to make the dressing",
                "To assemble bowls, place quinoa at the bottom, arrange roasted vegetables and chickpeas on top",
                "Add sliced avocado, drizzle with tahini dressing, and garnish with fresh cilantro"
            ],
            category: "Vegetarian",
            description: "A nourishing vegetarian bowl packed with roasted vegetables, protein-rich chickpeas, and whole grain quinoa, topped with a creamy tahini dressing."
        )
    ]
    
    @Published var favorites: [Recipe] = []
    
    func toggleFavorite(for recipe: Recipe) {
        if let index = recipes.firstIndex(where: { $0.id == recipe.id }) {
            recipes[index].isFavorite.toggle()
            
            if recipes[index].isFavorite {
                favorites.append(recipes[index])
            } else {
                favorites.removeAll { $0.id == recipe.id }
            }
        }
    }
}
