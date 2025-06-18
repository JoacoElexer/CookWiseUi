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

    func fetchRecipes(completion: @escaping ([recipe]) -> Void) {
        print("Fetching recipes...")
        guard let url = URL(string: "http://143.244.165.113:8080/recetas") else {return}

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

//    func addRecipe(_ recipe: NewRecipe, completion: @escaping (Bool) -> Void) {
//        guard let url = URL(string: "") else { return }
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        do {
//            let data = try JSONEncoder().encode(recipe)
//            request.httpBody = data
//        } catch {
//            print("Error al codificar los datos:", error)
//            completion(false)
//            return
//        }
//
//        URLSession.shared.dataTask(with: request) { _, response, _ in
//            DispatchQueue.main.async {
//                let success = (response as? HTTPURLResponse)?.statusCode == 201
//                completion(success)
//            }
//        }.resume()
//    }
}
