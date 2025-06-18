import Foundation

struct Ingredient: Codable, Identifiable {
    let id: Int
    let nombre: String
    let categoria: String
}

class ingredientsService {
    static let shared = ingredientsService()

    func fetchIngredients(completion: @escaping ([Ingredient]) -> Void) {
        print("Fetching ingredients...")
        
        guard let url = URL(string: "https://cookwise123.duckdns.org/ingredientes") else {return}

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
