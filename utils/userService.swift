import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let usuario: String
    let nombre: String
    let email: String
    let contraseña: String
}

class userService {
    static let shared = userService()
    
    func fetchUsers() async throws -> [User] {
        guard let url = URL(string: "https://cookwiseapi123.duckdns.org/usuarios") else {
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
            let users = try JSONDecoder().decode([User].self, from: data)
            print("Decodificacion exitosa")
            return users
        } catch {
            print("Error en la solicitud \(error)")
            throw error
        }
    }
}
