import Foundation

struct Favorite: Codable, Identifiable {
    let id: UUID
    let usuarioId: Int
    let recetaId: Int
}

class favoritesService {
    static let shared = favoritesService()
    
    func fetchFavorites() async throws -> [Favorite] {
        guard let url = URL(string: "https://cookwiseapi123.duckdns.org/favoritos") else {
            print("url invalida")
            throw URLError(.badURL)
        }
        print(url)
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print("Verificando httpResponse")
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                print("error en HTTPURLResponse")
                throw URLError(.badServerResponse)
            }
            let favorites = try JSONDecoder().decode([Favorite].self, from: data)
            print("Decodificacion exitosa")
            return favorites
        } catch {
            print("Error en la solicitud \(error)")
            throw error
        }
    }
}
