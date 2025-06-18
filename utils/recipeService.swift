import Foundation

struct Recipe: Codable, Identifiable {
    let id: String
    let nombre: String
    let descripcion: String
    let pasos: String
    let tiempoDePreparacion: Int
    let dificultad: String
}

class recipeService {
    static let shared = recipeService()
    
    func fetchRecipes() async throws -> [Recipe] {
        guard let url = URL(string: "https://cookwiseapi123.duckdns.org/recetas") else {
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
            let recipes = try JSONDecoder().decode([Recipe].self, from: data)
            print("Decodificacion exitosa")
            return recipes
        } catch {
            print("Error en la solicitud \(error)")
            throw error
        }
    }
}
