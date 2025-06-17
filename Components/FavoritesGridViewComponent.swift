import SwiftUI

struct FavoritesGridViewComponent: View {
    let recipes: [Recipe]
    let columns = Array(repeating: GridItem(.flexible(), spacing: 16), count: 3)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(recipes) { recipe in
                    RecipeCardComponent(recipe: recipe, isFavorite: viewModel.isFavorite(recipeId: recipe.id))
                }
            }
            .padding()
        }
    }
}