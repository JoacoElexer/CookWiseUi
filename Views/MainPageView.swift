import SwiftUI

struct MainPageView: View {
    @State private var searchText: String = ""
    var body: some View {
        VStack {
            HStack {
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
            HStack {
                Text("Recetas")
                    .font(.title)
                Spacer()
            } // Titulo
            .frame(width: 750)
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        // ForEach con elementos de api
                    }
                }
            } // Tarjetas de recetas
            HStack {
                
            } // Titulo de ingredientes
            VStack {
                
            } // Tarjetas de ingredientes
            Spacer()
        }
        .background(Color.gray)
    }
}

//#Preview {
//    MainPageView()
//}
