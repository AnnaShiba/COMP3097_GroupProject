//
//  DiscoverView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()

            NavigationView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Discover Recipes")
                            .font(.custom("MarkerFelt-Wide", size: 28))
                            .foregroundColor(.green)
                        Spacer()
                        Menu {
                            Button("Main Course", action: {})
                            Button("Dessert", action: {})
                            Button("Snacks", action: {})
                        } label: {
                            HStack {
                                Text("main course")
                                Image(systemName: "chevron.down")
                            }
                            .foregroundColor(.green)
                        }
                    }
                    .padding()

                    ScrollView {
                        VStack(spacing: 16) {
                            ForEach(sampleRecipes) { recipe in
                                RecipeCard(recipe: recipe)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 80)
                    }
                }
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
