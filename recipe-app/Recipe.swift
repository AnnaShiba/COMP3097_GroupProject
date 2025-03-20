//
//  Recipe.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let servings: Int
    let likes: Int
    let minutes: Int
}


