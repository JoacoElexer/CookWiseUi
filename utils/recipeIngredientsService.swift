import Foundation

struct recipeIngredients: Codable, Identifiable {
    let id: UUID
    let recetaId: Int
    let ingredientId: Int
    let cantidad: Int
    let unidadMedidad: String
}

class recipeIngredientsService {
    static let shared = recipeIngredientsService()

    func fetchIngredients(completion: @escaping ([recipeIngredient]) -> Void) {
        guard let url = URL(string: "") else {return}

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
            let recipeIngredients = try? JSONDecoder().decode([recipeIngredient].self, from: data) else {
                DispatchQueue.main.async { completion([]) }
                return
            }

            DispatchQueue.main.async {
                completion(recipeIngredients)
            }
        }.resume()
    }
}