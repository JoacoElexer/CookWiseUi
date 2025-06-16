import SwiftUI

struct RecipeCardComponent : View {
//    var nombre: String
//    var tiempo: Int
    //
//    var dificultad: String
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Image(systemName: "star")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .padding(.bottom, 5)
            }
            VStack {
                //Text("\(nombre)")
                Text("nombre")
                    .font(.title)
                    .foregroundStyle(Color.black)
                Button(action: {
                    print("Boton seleccionado")
                }, label: {
                    //Text("Tiempo de preparacion: \(tiempo) min")
                    Text("20 min")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                })
                .frame(width: 200, height: 30)
                .buttonStyle(PlainButtonStyle())
                .background(Color.white)
                .cornerRadius(13)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                Button(action: {
                    print("Boton seleccionado")
                }, label: {
                    //Text("Dificultad: \(dificultad)")
                    Text("Facil")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                })
                .frame(width: 200, height: 30)
                .buttonStyle(PlainButtonStyle())
                .background(Color.white)
                .cornerRadius(13)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                Button(action: {
                    print("Boton seleccionado")
                }, label: {
                    Text("Ver detalles")
                        .font(.title3)
                        .foregroundStyle(Color.black)
                })
                .frame(width: 200, height: 50)
                .buttonStyle(PlainButtonStyle())
                .background(Color.white)
                .cornerRadius(13)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                .padding()
            } //Vstack Content
        } //Vstack Main
        .frame(width: 200, height: 270)
        .padding(.horizontal, 25)
        //.background(Color(color).opacity(0.7))
        .background(LinearGradient(colors: [(Color.white).opacity(0.7), .white], startPoint: .bottom, endPoint: .top))
        .cornerRadius(10)
    }
}

struct RecipeCardComponent_Previews:
    PreviewProvider {
    static var previews: some View {
        RecipeCardComponent()
    }
}
