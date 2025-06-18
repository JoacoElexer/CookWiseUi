//
//  RecipeListView.swift
//  CookWise
//
//  Created by ISSC_412_2024 on 18/06/25.
//

import SwiftUI

struct RecipeListView: View {
    @StateObject var viewModel = MainPageViewModel()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 16) {
                ForEach(viewModel.recipes) { Recipe in
                    RecipeCardComponent(recipe: Recipe)
                }
            }
        }
        .onAppear {
            viewModel.loadRecipes()
        }
    }
}

#Preview {
    RecipeListView()
}
