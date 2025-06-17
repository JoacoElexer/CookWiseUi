import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.vertical, 20)
                        .foregroundStyle(Color.black)
                }
                VStack (alignment: .leading) {
                    HStack {
                        Text("Usuario")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                    HStack {
                        Text("Joaco Vrz")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                VStack (alignment: .leading) {
                    Button(action: {
                        print("Boton seleccionado")
                    }, label: {
                        Text("Editar")
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
                    .padding(30)
                }
            } // Hstack de Cuenta
            .background(Color.gray)
            .cornerRadius(15)
            .padding(.horizontal, 35)
            .padding(.top, 35)
            .padding(.bottom, 10)
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        HStack {
                            Text("Nombre")
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding(.bottom, 2)
                        }
                        HStack {
                            Text("Joaquin Valois")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 30)
                    Spacer()
                    VStack {
                        Button(action: {
                            print("Boton seleccionado")
                        }, label: {
                            Text("Editar")
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
                        .padding(.horizontal, 30)
                    }
                }
                .padding(.vertical, 15)
                HStack {
                    VStack (alignment: .leading) {
                        HStack {
                            Text("Email")
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding(.bottom, 2)
                        }
                        HStack {
                            Text("jvr.lasallebajio.edu.mx")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 30)
                    Spacer()
                    VStack {
                        Button(action: {
                            print("Boton seleccionado")
                        }, label: {
                            Text("Editar")
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
                        .padding(.horizontal, 30)
                    }
                }
                .padding(.vertical, 15)
                HStack {
                    VStack (alignment: .leading) {
                        HStack {
                            Text("Contraseña")
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding(.bottom, 2)
                        }
                        HStack {
                            Text("*************")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 30)
                    Spacer()
                    VStack {
                        Button(action: {
                            print("Boton seleccionado")
                        }, label: {
                            Text("Editar")
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
                        .padding(.horizontal, 30)
                    }
                }
                .padding(.vertical, 15)
                HStack {
                    Button(action: {
                        print("Boton seleccionado")
                    }, label: {
                        Text("Home")
                            .font(.title3)
                            .foregroundStyle(Color.white)
                        Image(systemName: "house")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    })
                    .frame(width: 150, height: 35)
                    .buttonStyle(PlainButtonStyle())
                    .background(Color.blue)
                    .cornerRadius(13)
                    .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                    .padding(.horizontal, 30)
                    Spacer()
                    Button(action: {
                        print("Boton seleccionado")
                    }, label: {
                        Text("Favoritos")
                            .font(.title3)
                            .foregroundStyle(Color.white)
                        Image(systemName: "star")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    })
                    .frame(width: 150, height: 35)
                    .buttonStyle(PlainButtonStyle())
                    .background(Color.yellow)
                    .cornerRadius(13)
                    .shadow(color: .black.opacity(0.3), radius: 3, x: 0, y: 4)
                    .padding(.horizontal, 30)
                }
                .padding(.vertical, 20)
            } // Vstack de contenidos
            .background(Color.gray)
            .cornerRadius(15)
            .padding(.horizontal, 35)
            .padding(.top, 10)
            .padding(.bottom, 35)
        } // Vstack main
        .background(Color.orange)
        .cornerRadius(25)
    }
}

