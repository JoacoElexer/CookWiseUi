class MainPageViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var ingredients: [Ingredient] = []
    @Published var favorites: [Favorite] = []

    init() {
        loadRecipes()
        loadIngredients()
        loadFavorites()
    }

    func loadRecipes() {
        recipeService.shared.fetchRecipes { recipes in
            self.recipes = recipes
        }
    }

    func loadIngredients() {
        ingredientsService.shared.fetchIngredients { ingredients in
            self.ingredients = ingredients
        }
    }

    func loadFavorites(for userId: Int) {
        favoritesService.shared.fetchFavorites { AllFavorites in
            self.favorites = AllFavorites.filter { $0.usuarioId == userId }
        }
    }

    func isFavorite(recipeId: Int) -> Bool {
        favorites.contains { $0.recetaId == recipeId }
    }

    func toggleFavorite(userId: Int, recipeId: Int) {
        if let index = favorites.firstIndex(where: { $0.recipeId == recipeId && $0.userId == userId }) {
            // Eliminar de favoritos
            FavoritesService.shared.removeFavorite(userId: userId, recipeId: recipeId) { success in
                if success {
                    self.favorites.remove(at: index)
                }
            }
        } else {
            // Agregar a favoritos
            FavoritesService.shared.addFavorite(userId: userId, recipeId: recipeId) { success in
                if success {
                    let newFavorite = Favorite(id: UUID(), userId: userId, recipeId: recipeId)
                    self.favorites.append(newFavorite)
                }
            }
        }
    }
}