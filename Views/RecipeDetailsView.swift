import SwiftUI

struct RecipeDetailsView: View {
    //    let recipe: recipe
    //    let isFavorite: Bool
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button(action: {
                        print("Boton seleccionado")
                    }, label: {
                        Text("20 min.")
                            .font(.title3)
                            .foregroundStyle(Color.black)
                    })
                    .frame(width: 200, height: 35)
                    .buttonStyle(PlainButtonStyle())
                    .background(Color.white)
                    .cornerRadius(13)
                    .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                    Button(action: {
                        print("Boton seleccionado")
                    }, label: {
                        Text("facil")
                            .font(.title3)
                            .foregroundStyle(Color.black)
                    })
                    .frame(width: 200, height: 35)
                    .buttonStyle(PlainButtonStyle())
                    .background(Color.white)
                    .cornerRadius(13)
                    .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                    Spacer()
                    Image(systemName: "star")
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                        .padding(.bottom, 5)
                }
                .padding()
                .frame(width: 700)
                HStack {
                    Text("Spaghetii a la Bolognesa")
                        .font(.title)
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                .frame(width: 700)
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 700, height: 1)
                    .padding(.horizontal)
                HStack {
                    VStack (alignment: .leading) {
                        Text("Descripcion")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.bottom, 10)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                            .font(.title3)
                            .foregroundColor(.black)
                            .padding(.bottom, 10)
                    }
                    Image("food")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                .frame(width: 700)
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 700, height: 1)
                    .padding(.horizontal)
                VStack (alignment: .leading) {
                    Text("Preparacion")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.bottom, 10)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .font(.title3)
                        .foregroundColor(.black)
                        .padding(.bottom, 10)
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                .frame(width: 700)
            } // Vstack de contenidos
            .background(Color.gray)
            .cornerRadius(15)
            .padding(.all, 35)
        } // Vstack main
        .background(Color.orange)
        .cornerRadius(25)
    }
}


