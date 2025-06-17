import Foundation

struct Favorite: Codable, Identifiable {
    let id: UUID
    let usuarioId: Int
    let recetaId: Int
}

class FavoritesService {
    static let shared = FavoritesService()

    func fetchFavorites(completion: @escaping ([Favorite]) -> Void) {
        guard let url = URL(string: "") else {return}

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
            let favorites = try? JSONDecoder().decode([Favorite].self, from: data) else {
                DispatchQueue.main.async { completion([]) }
                return
            }

            DispatchQueue.main.async {
                completion(favorites)
            }
        }.resume()
    }

    func addFavorite(userId: Int, recipeId: Int, completion: @escaping (Bool) -> Void) {
        guard let url = URL(string: "") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body = ["userId": userId, "recipeId": recipeId]
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { _, response, _ in
            DispatchQueue.main.async {
                completion((response as? HTTPURLResponse)?.statusCode == 200)
            }
        }.resume()
    }
    
    func removeFavorite(userId: Int, recipeId: Int, completion: @escaping (Bool) -> Void) {
        let urlString = ""
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        
        URLSession.shared.dataTask(with: request) { _, response, _ in
            DispatchQueue.main.async {
                completion((response as? HTTPURLResponse)?.statusCode == 200)
            }
        }.resume()
    }
}