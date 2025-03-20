//
//  recipe_appApp.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

@main
struct recipe_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
