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
        ("Anna Shibanova", "101399925", "Lead Developer"),
        ("Mo Harry Bandukda", "101451857", "UI Designer"),
        ("Nicole Milmine", "101462077", "Recipe Curator"),
        ("Oleg Chystieiev", "101447469", "Backend Developer"),
        ("Shirin Ali", "101385244", "Quality Assurance")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                ZStack(alignment: .bottomLeading) {
                    Image("bowl")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 220)
                        .cornerRadius(15)
                        .overlay(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.black.opacity(0.7), Color.black.opacity(0)]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                            .cornerRadius(15)
                        )
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Meet The Team")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("The people behind Healthy Food Decider")
                            .font(.headline)
                            .foregroundColor(.white.opacity(0.9))
                    }
                    .padding()
                }
                .padding(.horizontal)
                
                // App description
                VStack(alignment: .leading, spacing: 12) {
                    Text("About Our App")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("Healthy Food Decider is designed to help you make better food choices with delicious and nutritious recipes. Our team of passionate foodies and health enthusiasts have curated a collection of recipes that are both tasty and good for you.")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.horizontal)
                
                // Team members section
                VStack(alignment: .leading, spacing: 15) {
                    Text("Our Team")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                    
                    ForEach(teamMembers, id: \.1) { name, id, role in
                        TeamMemberCard(name: name, id: id, role: role)
                    }
                }
                .padding(.horizontal)
            
                // App version
                Text("Version 2.1.0")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                    .padding(.bottom, 30)
            }
        }
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .foregroundColor(.green)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

// Custom team member card view
struct TeamMemberCard: View {
    var name: String
    var id: String
    var role: String
    
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color.green.opacity(0.1))
                    .frame(width: 60, height: 60)
                
                Image(systemName: "person.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.green)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)
                
                Text(role)
                    .font(.subheadline)
                    .foregroundColor(.green)
                
                Text("ID: \(id)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
