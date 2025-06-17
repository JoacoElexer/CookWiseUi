import Foundation

struct user: Codable, Identifiable {
    let id: Int
    let usuario: String
    let nombre: String
    let email: String
    let contrasena: String
}

class userService {
    static let shared = userService()

    func fetchUsers(completion: @escaping ([user]) -> Void) {
        guard let url = URL(string: "") else {return}

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
            let users = try? JSONDecoder().decode([user].self, from: data) else {
                DispatchQueue.main.async { completion([]) }
                return
            }

            DispatchQueue.main.async {
                completion(users)
            }
        }.resume()
    }
}