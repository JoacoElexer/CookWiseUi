//
//  IngredientsListView.swift
//  CookWise
//
//  Created by ISSC_412_2024 on 18/06/25.
//

import SwiftUI

struct IngredientsListView: View {
    @StateObject var viewModel = MainPageViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(viewModel.ingredients) { Ingredient in
                IngredientCardComponent(ingredient: Ingredient)
            }
        }
        .onAppear {
            viewModel.loadIngredients()
        }
    }
}
