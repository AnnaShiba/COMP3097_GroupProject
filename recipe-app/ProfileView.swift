//
//  ProfileView.swift
//  prototype
//
//  Created by Nicole Milmine on 2025-03-18.
//
import SwiftUI

struct ProfileView: View {
    
    @State private var user: User?
    var dietPref = ["Vegetarian", "Low Carb", "High Protein", "Gluten-Free"]
    var allergies = ["Peanuts", "Tree Nuts", "Dairy", "Gluten"]
    var userId: Int
    var databaseHelper = DatabaseHelper()
    
    var body: some View {
        ScrollView{
            VStack {
                VStack(spacing: 16) {
                    VStack(spacing: 12){
                        // Profile Image
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .padding()
                        
                        // User name
                        Text("Jane Doe")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        // Year Joined
                        Text("Member since 2025")
                        
                        Divider()
                        
                        HStack {
                            ProfileStat(title: "Height", value: "5'5")
                            Spacer()
                            ProfileStat(title: "Weight", value: "135 lbs")
                            Spacer()
                            ProfileStat(title: "Activity Level", value: "High")
                        }
                        .padding(.horizontal)
                        Divider()
                        Button(action: {}) {
                            Text("Edit Profile")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                        .padding(.horizontal)
                    }
                    .padding()
                    .cornerRadius(25)
                    .shadow(radius: 5)
                    
                    // Dietary Pref
                    VStack(alignment: .leading, spacing: 12) {
                        HStack{
                            Text("Dietary Preferences")
                                .font(.headline)
                            Spacer()
                            Button("Edit") {}
                                .foregroundColor(.green)
                        }
                        
                        WrapView(items: dietPref){ item in
                            Text(item)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(Color(.systemGray5))
                                .cornerRadius(20)
                        }
                    }
                    .padding()
                    .cornerRadius(25)
                    .shadow(radius: 5)
                    
                    // Allergies
                    VStack(alignment: .leading, spacing: 12) {
                        HStack{
                            Text("Dietary Preferences")
                                .font(.headline)
                            Spacer()
                            Button("Edit") {}
                                .foregroundColor(.green)
                        }
                        
                        WrapView(items: allergies){ item in
                            Text(item)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(Color.red.opacity(0.2))
                                .foregroundColor(.red)
                                .cornerRadius(20)
                        }
                    }
                    .padding()
                    .cornerRadius(25)
                    .shadow(radius: 5)
                }
                .padding()
            }
        }
    }
}

struct ProfileStat: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack{
            Text(title)
                .font(.subheadline)
            Text(value)
                .fontWeight(.semibold)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(userId: 1)
    }
}
