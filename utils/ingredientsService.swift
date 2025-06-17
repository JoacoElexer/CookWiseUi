import Foundation

struct Ingredient: Codable, Identifiable {
    let id: Int
    let nombre: String
    let categoria: String
}

class IngredientsService {
    static let shared = IngredientsService()

    func fetchIngredients(completion: @escaping ([Ingredient]) -> Void) {
        guard let url = URL(string: "") else {return}

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
            let ingredients = try? JSONDecoder().decode([Ingredient].self, from: data) else {
                DispatchQueue.main.async { completion([]) }
                return
            }

            DispatchQueue.main.async {
                completion(ingredients)
            }
        }.resume()
    }
}