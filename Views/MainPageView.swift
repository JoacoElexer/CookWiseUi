import SwiftUI

struct MainPageView: View {
    @State private var searchText: String = ""
    @StateObject private var viewModel = MainPageViewModel()
    var body: some View {
        VStack {
            HStack { // Buscador
                TextField("Buscar", text: $searchText)
                    .padding(12)
                    .frame(width: 550, height: 35)
                    .background(Color.white)
                    .cornerRadius(100)
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 4)
                    .textFieldStyle(PlainTextFieldStyle())
                    .foregroundStyle(Color.black)
                    .padding()
                Spacer()
                Button(action: {
                    print("Boton seleccionado")
                }, label: {
                    //Text("Dificultad: \(dificultad)")
                    Text("Filtros")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                    Image(systemName: "line.horizontal.3.decrease")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                })
                .frame(width: 150, height: 35)
                .buttonStyle(PlainButtonStyle())
                .background(Color.white)
                .cornerRadius(13)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                .padding()
            } // Buscador
            
            HStack { // Titulo
                Text("Recetas")
                    .font(.title)
                Spacer()
                Button(action: {
                    print("Boton seleccionado")
                }, label: {
                    //Text("Dificultad: \(dificultad)")
                    Text("Nuevo")
                        .font(.title3)
                        .foregroundStyle(Color.white)
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                })
                .frame(width: 150, height: 35)
                .buttonStyle(PlainButtonStyle())
                .background(Color.blue)
                .cornerRadius(13)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                .padding()
            } // Titulo
            .frame(width: 750)

            HStack { // Tarjetas de recetas
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(viewModel.recipes) { recipe in 
                            RecipeCardComponent(recipe: recipe, isFavorite: viewModel.isFavorite(recipeId: recipe.id))
                        }
                    }
                }
            } // Tarjetas de recetas

            HStack { // Titulo de ingredientes
                Text("Ingredientes disponibles")
                    .font(.title)
                Spacer()
                Button(action: {
                    print("Boton seleccionado")
                }, label: {
                    //Text("Dificultad: \(dificultad)")
                    Text("Nuevo")
                        .font(.title3)
                        .foregroundStyle(Color.white)
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                })
                .frame(width: 150, height: 35)
                .buttonStyle(PlainButtonStyle())
                .background(Color.blue)
                .cornerRadius(13)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                .padding()
            } // Titulo de ingredientes
            .frame(width: 750)

            VStack { // Tarjetas de ingredientes
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(viewModel.ingredients) { ingredient in 
                            IngredientCardComponent(ingredient: ingredient)}
                    }
                }
            } // Tarjetas de ingredientes

            Spacer()
        }
        .background(Color.gray)
    }
}

//#Preview {
//    MainPageView()
//}
