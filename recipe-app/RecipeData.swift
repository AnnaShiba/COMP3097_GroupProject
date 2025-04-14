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
            imageName: "salad",
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
        ),
        Recipe(
            name: "Spaghetti Carbonara",
            imageName: "carbonara",
            servings: 4,
            likes: 145,
            minutes: 25,
            ingredients: [
                "12 oz spaghetti",
                "4 oz pancetta, diced",
                "2 large eggs",
                "1/2 cup grated Parmesan cheese",
                "2 cloves garlic, minced",
                "Salt and black pepper to taste",
                "Fresh parsley, chopped"
            ],
            instructions: [
                "Cook spaghetti in salted water until al dente. Reserve 1/2 cup pasta water and drain.",
                "Cook pancetta in a skillet until crispy. Add garlic and cook for 1 minute.",
                "In a bowl, whisk eggs and Parmesan.",
                "Quickly mix hot pasta with egg mixture, pancetta, and a splash of reserved pasta water.",
                "Season with salt, pepper, and garnish with parsley."
            ],
            category: "Main Course",
            description: "A creamy, cheesy Roman classic made with simple ingredients and bursting with flavor."
        ),

        Recipe(
            name: "Caprese Stuffed Chicken",
            imageName: "caprese_chicken",
            servings: 4,
            likes: 110,
            minutes: 40,
            ingredients: [
                "4 boneless chicken breasts",
                "1 cup mozzarella cheese, shredded",
                "1/2 cup sun-dried tomatoes",
                "Fresh basil leaves",
                "Salt and pepper to taste",
                "2 tablespoons olive oil",
                "Balsamic glaze for drizzling"
            ],
            instructions: [
                "Cut slits into chicken breasts without slicing all the way through.",
                "Stuff with mozzarella, tomatoes, and basil.",
                "Season with salt and pepper.",
                "Sear in a skillet with olive oil until golden, then bake at 375°F for 20 minutes.",
                "Drizzle with balsamic glaze before serving."
            ],
            category: "Main Course",
            description: "Juicy chicken breasts stuffed with vibrant Caprese flavors and finished with a sweet balsamic glaze."
        ),

        Recipe(
            name: "Garlic Butter Salmon",
            imageName: "garlic_salmon",
            servings: 2,
            likes: 120,
            minutes: 20,
            ingredients: [
                "2 salmon fillets",
                "2 tablespoons butter",
                "3 cloves garlic, minced",
                "1 tablespoon lemon juice",
                "1 teaspoon dried parsley",
                "Salt and pepper to taste"
            ],
            instructions: [
                "Melt butter in a skillet over medium heat.",
                "Add garlic and cook for 1 minute.",
                "Place salmon fillets skin-side down, cook for 4-5 minutes per side.",
                "Add lemon juice and parsley, spoon butter over salmon while cooking.",
                "Serve hot with vegetables or rice."
            ],
            category: "Seafood",
            description: "Flaky salmon in a rich garlic butter sauce, perfect for a quick and satisfying dinner."
        ),

        Recipe(
            name: "Classic Margherita Pizza",
            imageName: "margherita_pizza",
            servings: 2,
            likes: 102,
            minutes: 30,
            ingredients: [
                "1 pizza dough",
                "1/2 cup tomato sauce",
                "8 oz fresh mozzarella, sliced",
                "Fresh basil leaves",
                "1 tablespoon olive oil",
                "Salt to taste"
            ],
            instructions: [
                "Preheat oven to 475°F.",
                "Roll out dough and place on a baking sheet.",
                "Spread tomato sauce, top with mozzarella and basil.",
                "Drizzle with olive oil and sprinkle salt.",
                "Bake for 12-15 minutes until crust is golden and cheese bubbles."
            ],
            category: "Main Course",
            description: "A simple, delicious pizza topped with fresh mozzarella, basil, and tomato sauce."
        ),

        Recipe(
            name: "Thai Green Curry",
            imageName: "green_curry",
            servings: 4,
            likes: 89,
            minutes: 35,
            ingredients: [
                "1 tablespoon green curry paste",
                "1 can coconut milk",
                "2 chicken breasts, sliced",
                "1 red bell pepper, sliced",
                "1 zucchini, sliced",
                "1/2 cup green beans",
                "1 tablespoon fish sauce",
                "1 teaspoon sugar",
                "Fresh basil leaves",
                "Jasmine rice for serving"
            ],
            instructions: [
                "Heat curry paste in a saucepan until fragrant.",
                "Add coconut milk and bring to a simmer.",
                "Add chicken and vegetables, cook for 15 minutes.",
                "Stir in fish sauce, sugar, and basil.",
                "Serve with jasmine rice."
            ],
            category: "Main Course",
            description: "A fragrant and creamy Thai curry loaded with tender chicken and fresh vegetables."
        ),

        Recipe(
            name: "Avocado Toast with Poached Egg",
            imageName: "avocado_toast",
            servings: 2,
            likes: 95,
            minutes: 15,
            ingredients: [
                "2 slices sourdough bread",
                "1 ripe avocado",
                "2 eggs",
                "1 tablespoon vinegar",
                "Salt and pepper to taste",
                "Red chili flakes (optional)"
            ],
            instructions: [
                "Toast bread slices to your liking.",
                "Mash avocado with salt and pepper.",
                "Bring water to a simmer, add vinegar.",
                "Crack eggs into water and poach for 3 minutes.",
                "Spread avocado on toast, top with poached egg and chili flakes."
            ],
            category: "Breakfast",
            description: "Creamy avocado on crusty toast topped with a perfectly poached egg—simple and satisfying."
        ),

        Recipe(
            name: "Beef and Broccoli Stir-Fry",
            imageName: "beef_broccoli",
            servings: 4,
            likes: 134,
            minutes: 25,
            ingredients: [
                "1 lb flank steak, thinly sliced",
                "2 cups broccoli florets",
                "2 tablespoons soy sauce",
                "1 tablespoon oyster sauce",
                "1 teaspoon cornstarch",
                "2 tablespoons vegetable oil",
                "2 garlic cloves, minced"
            ],
            instructions: [
                "Marinate beef with soy sauce, oyster sauce, and cornstarch.",
                "Blanch broccoli in boiling water for 2 minutes.",
                "Heat oil in wok, stir-fry beef until browned.",
                "Add garlic and broccoli, stir-fry for another 3 minutes.",
                "Serve with steamed rice."
            ],
            category: "Main Course",
            description: "Tender beef and crisp broccoli in a savory stir-fry sauce, better than takeout!"
        ),

        Recipe(
            name: "Chocolate Lava Cake",
            imageName: "lava_cake",
            servings: 4,
            likes: 150,
            minutes: 30,
            ingredients: [
                "1/2 cup butter",
                "4 oz dark chocolate",
                "2 eggs",
                "2 egg yolks",
                "1/4 cup sugar",
                "1/4 cup flour",
                "Butter for greasing ramekins",
                "Powdered sugar for dusting"
            ],
            instructions: [
                "Preheat oven to 425°F. Grease and flour ramekins.",
                "Melt butter and chocolate together.",
                "Whisk eggs, yolks, and sugar until thick.",
                "Combine with chocolate mixture, fold in flour.",
                "Pour into ramekins and bake 12 minutes.",
                "Let cool slightly, invert onto plates and dust with powdered sugar."
            ],
            category: "Dessert",
            description: "Rich, gooey chocolate cakes with a molten center—perfect for indulgent nights."
        ),

        Recipe(
            name: "Greek Tzatziki Dip",
            imageName: "tzatziki",
            servings: 6,
            likes: 70,
            minutes: 10,
            ingredients: [
                "1 cup Greek yogurt",
                "1/2 cucumber, grated and drained",
                "2 cloves garlic, minced",
                "1 tablespoon lemon juice",
                "1 tablespoon olive oil",
                "1 tablespoon fresh dill, chopped",
                "Salt and pepper to taste"
            ],
            instructions: [
                "Combine all ingredients in a bowl.",
                "Mix until smooth and well combined.",
                "Chill before serving with pita or veggies."
            ],
            category: "Appetizer",
            description: "A cool and creamy Greek dip that pairs perfectly with grilled meats or as a snack."
        ),

        Recipe(
            name: "Pumpkin Spice Muffins",
            imageName: "pumpkin_muffins",
            servings: 12,
            likes: 115,
            minutes: 35,
            ingredients: [
                "1 3/4 cups flour",
                "1 cup pumpkin puree",
                "2/3 cup sugar",
                "1/2 cup vegetable oil",
                "2 eggs",
                "1 teaspoon baking soda",
                "1/2 teaspoon baking powder",
                "1 teaspoon cinnamon",
                "1/2 teaspoon nutmeg",
                "1/2 teaspoon salt"
            ],
            instructions: [
                "Preheat oven to 375°F. Line muffin tin with liners.",
                "Mix dry ingredients in a bowl.",
                "In another bowl, whisk pumpkin, oil, sugar, and eggs.",
                "Combine wet and dry mixtures until just blended.",
                "Fill muffin cups 3/4 full and bake for 20-22 minutes.",
                "Cool on a wire rack."
            ],
            category: "Dessert",
            description: "Soft and moist muffins filled with cozy fall flavors of pumpkin and warm spices."
        ),

        Recipe(
            name: "Vegan Black Bean Soup",
            imageName: "black_bean_soup",
            servings: 3,
            likes: 46,
            minutes: 30,
            ingredients: [
                "2 cans Black Beans",
                "2 Tomatoes",
                "1 Onion",
                "2 Carrots",
                "2 eggs",
                "1 tsp Chili Powder",
                "1 tsp Ground Cumin",
                "1 teaspoon cinnamon",
                "1/2 Red Onion",
                "1/2 teaspoon salt"
            ],
            instructions: [
                "Heat the oil in a large stockpot over medium-high heat.",
                "Add the onion, carrot, bell pepper and sauté for 6 minutes.",
                "Add in the garlic, cumin, chili powder and chipotle powder and sauté.",
                "Add the vegetable broth and black beans and stir to combine."
            ],
            category: "Main Course",
            description: "This quick black bean soup recipe is full of flavor and protein and comes together in less than 30 minutes!"
        ),

        Recipe(
            name: "Dairy Free Chicken Pot Pie",
            imageName: "chicken_pot_pie",
            servings: 4,
            likes: 110,
            minutes: 55,
            ingredients: [
                "1 cup Dairy Free Milk",
                "1 Onion",
                "2 Carrots",
                "1 Sweet Potato",
				"1 cup Gluten-Free All-Purpose Flour",
                "2 cups Chicken Stock",
                "2 tbsp Margarine",
                "2 cups Frozen Mixed Vegetables",
                "1/2 tsp Pepper",
                "1 teaspoon salt"
            ],
            instructions: [
                "Stir in the broth and dairy free milk.",
                "Add fried chicken breast with stirred vegetables.",
                "Cook and stir until the mixture is thickened.",
                "Serve topped with a pie crust round from gluten-free flour."
            ],
            category: "Main Course",
            description: "A hearty, creamy chicken stew is topped with pie crust rounds to create single servings of gluten and dairy free chicken pot pie."
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
