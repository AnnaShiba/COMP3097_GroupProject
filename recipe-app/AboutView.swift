//
//  AboutView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let teamMembers = [
        ("Anna Shibanova", "101399925"),
        ("Oleg Chystieiev", "101447469"),
        ("Nicole Milmine", "101462077"),
        ("Mo Harry Bandukda", "101451857"),
        ("Shirin Ali", "101385244")
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Back")
                        }
                        .foregroundColor(.green)
                        .font(.headline)
                    }
                    Spacer()
                }
                .padding([.horizontal, .top])

                LinearGradient(gradient: Gradient(colors: [.green, .mint]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 180)
                    .overlay(
                        VStack {
                            Text("Meet The Team")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .padding(.top, 50)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 30))

                ForEach(teamMembers, id: \.1) { name, id in
                    HStack(spacing: 16) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.green)

                        VStack(alignment: .leading, spacing: 4) {
                            Text(name)
                                .font(.headline)
                            Text("ID: \(id)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }

                        Spacer()
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
                    .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 3)
                    .padding(.horizontal)
                }

                Spacer()
            }
            .padding(.top)
        }
        .navigationBarBackButtonHidden(true) 
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
