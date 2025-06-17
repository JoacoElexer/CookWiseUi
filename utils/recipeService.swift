import Foundation

struct recipe: Codable, Identifiable {
    let id: Int
    let nombre: String
    let descripcion: String
    let pasos: String
    let tiempoDePreparacion: Int
    let dificultad: String
    let imagen: String
}

class recipeService {
    static let shared = recipeService()

    func fetchIngredients(completion: @escaping ([recipe]) -> Void) {
        guard let url = URL(string: "") else {return}

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
            let recipes = try? JSONDecoder().decode([recipe].self, from: data) else {
                DispatchQueue.main.async { completion([]) }
                return
            }

            DispatchQueue.main.async {
                completion(recipes)
            }
        }.resume()
    }
}