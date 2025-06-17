import SwiftUI

struct SideBarComponent : View {
    var body: some View {
        VStack {
            Button(action: {
                print("Boton de perfil seleccionado")
            }, label: {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Circle().fill(Color.blue.opacity(0)))
                    .foregroundStyle(Color.black)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(10)
            Spacer()
            Button(action: {
                print("Boton Home seleccionado")
            }, label: {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .background(Circle().fill(Color.blue.opacity(0)))
                    .foregroundStyle(Color.black)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(10)
            Button(action: {
                print("Boton Search seleccionado")
            }, label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .background(Circle().fill(Color.blue.opacity(0)))
                    .foregroundStyle(Color.black)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(10)
            Button(action: {
                print("Boton Favorites seleccionado")
            }, label: {
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .background(Circle().fill(Color.blue.opacity(0)))
                    .foregroundStyle(Color.black)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(10)
            Spacer()
            Button(action: {
                print("Boton Dark mode seleccionado")
            }, label: {
                Image(systemName: "moon")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Circle().fill(Color.blue.opacity(0)))
                    .foregroundStyle(Color.black)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(10)
            Button(action: {
                print("Boton LogOut seleccionado")
            }, label: {
                Image(systemName: "rectangle.portrait.and.arrow.right")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Circle().fill(Color.blue.opacity(0)))
                    .foregroundStyle(Color.black)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(.bottom, 25)
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .padding(.bottom, 20)
        } // Contenedor principal
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [Color("sideBar1"), Color.black], startPoint: .top, endPoint: .bottom)
                .opacity(0.25)
        )
    }
}

//struct SideBarComponent_Previews:
//    PreviewProvider {
//    static var previews: some View {
//        SideBarComponent()
//    }
//}
