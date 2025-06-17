import SwiftUI

struct IngredientCardComponent: View {
    let ingredient: Ingredient

    var body: some View {
        HStack {
            VStack {
                Text("Nombre")
                .font(.title3)
                .foregroundStyle(Color.black)
                Text(ingredient.nombre)
                .font(.title)
                .foregroundStyle(Color.black)
            }
            VStack {
                Text("Categoría")
                .font(.title3)
                .foregroundStyle(Color.black)
                Text(ingredient.categoria)
                .font(.title)
                .foregroundStyle(Color.black)
            }
            Image(systemName: "trash")
                .foregroundColor(.black)
                .font(.system(size: 25))
        }
        .padding()
        .frame(width: 300, height: 100)
        .background(Color.white)
        .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 4)
        .cornerRadius(25)
    }
}
