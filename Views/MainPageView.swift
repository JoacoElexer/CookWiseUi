import SwiftUI

struct MainPageView: View {
    @State private var searchText: String = ""
    @StateObject private var viewModel = MainPageViewModel()
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
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
                        .foregroundStyle(Color.black)
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
                    RecipeListView()
                } // Tarjetas de recetas
                .frame(width: 750)
                
                HStack { // Titulo de ingredientes
                    Text("Ingredientes disponibles")
                        .font(.title)
                        .foregroundStyle(Color.black)
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
                    IngredientsListView()
                } // Tarjetas de ingredientes
                
                Spacer()
            }
        }
        .background(
            LinearGradient(colors: [Color("mainView1").opacity(0), Color("mainView2")], startPoint: .top, endPoint: .bottom)
        )
    }
}

//#Preview {
//    MainPageView()
//}
