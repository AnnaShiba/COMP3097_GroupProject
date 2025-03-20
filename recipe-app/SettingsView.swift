//
//  SettingsView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("App Settings ⚙️")
                    .font(.title)
                    .padding()
            }
            .navigationTitle("Settings")
        }
    }
}


#Preview {
    SettingsView()
}
