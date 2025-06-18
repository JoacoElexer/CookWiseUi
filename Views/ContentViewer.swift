//
//  ContentViewer.swift
//  CookWise
//
//  Created by ISSC_412_2024 on 18/06/25.
//

import SwiftUI

enum PantallaSeleccionada {
    case home
    case favorites
    case account
}

struct ContentViewer: View {
    @StateObject var viewModel1 = MainPageViewModel()
    @StateObject var viewModel2 = AccountViewModel()
    @State private var pantallaSeleccionada: PantallaSeleccionada = .home
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        HStack {
            SideBarComponent(pantallaSeleccionada: $pantallaSeleccionada)
            switch pantallaSeleccionada {
            case .home:
                MainPageView()
            case .favorites:
                FavoritesView()
            case .account:
                AccountView()
            }
        }
        .background(
            LinearGradient(colors: [Color("contentView1"), Color("contentView2")], startPoint: .top, endPoint: .bottom)
        )
        .frame(width: screen.width / 2.7, height: screen.height / 2)
    }
}
