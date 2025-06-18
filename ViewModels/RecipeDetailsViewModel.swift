import Foundation
class RecipeDetailsViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var ingredients: [Ingredient] = []
    @Published var favorites: [Favorite] = []

    init() {
        loadRecipes()
        loadIngredients()
        loadFavorites()
    }

    func loadRecipes() {
        Task {
            do {
                let recipes = try await recipeService.shared.fetchRecipes()
                self.recipes = recipes
            } catch {
                print("Error cargando recetas")
            }
        }
    }

    func loadIngredients() {
        Task {
            do {
                let ingredients = try await ingredientsService.shared.fetchIngredients()
                self.ingredients = ingredients
            } catch {
                print("Error cargando ingredientes")
            }
        }
    }

    func loadFavorites() {
        Task {
            do {
                let favorites = try await favoritesService.shared.fetchFavorites()
                self.favorites = favorites
            } catch {
                print("Error cargando favoritos")
            }
        }
    }

    func isFavorite(recipeId: Int) -> Bool {
        favorites.contains { $0.recetaId == recipeId }
    }

//    func toggleFavorite(userId: Int, recipeId: Int) {
//        if let index = favorites.firstIndex(where: { $0.recipeId == recipeId && $0.userId == userId }) {
//            // Eliminar de favoritos
//            FavoritesService.shared.removeFavorite(userId: userId, recipeId: recipeId) { success in
//                if success {
//                    self.favorites.remove(at: index)
//                }
//            }
//        } else {
//            // Agregar a favoritos
//            FavoritesService.shared.addFavorite(userId: userId, recipeId: recipeId) { success in
//                if success {
//                    let newFavorite = Favorite(id: UUID(), userId: userId, recipeId: recipeId)
//                    self.favorites.append(newFavorite)
//                }
//            }
//        }
//    }
}
