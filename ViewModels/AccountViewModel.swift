import Foundation

class AccountViewModel: ObservableObject {
    @Published var users: User?
    
    func loadUser(for userId: UUID) {
        Task {
            do {
                let users = try await userService.shared.fetchUsers()
                self.users = users.first {$0.id == userId }
            } catch {
                print("Error cargando usuarios")
            }
        }
    }
}
