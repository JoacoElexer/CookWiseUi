import Foundation

struct Ingredient: Codable, Identifiable {
    let id: UUID
    let nombre: String
    let categoria: String
}

class ingredientsService {
    static let shared = ingredientsService()
    
    func fetchIngredients() async throws -> [Ingredient] {
        guard let url = URL(string: "https://cookwiseapi123.duckdns.org/ingredientes") else {
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
            let ingredients = try JSONDecoder().decode([Ingredient].self, from: data)
            print("Decodificacion exitosa")
            return ingredients
        } catch {
            print("Error en la solicitud \(error)")
            throw error
        }
    }
}
