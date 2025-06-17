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
}