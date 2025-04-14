//
//  ProfileView.swift
//  prototype
//
//  Created by Nicole Milmine on 2025-03-18.
//
import SwiftUI

struct ProfileView: View {
    
    @State private var user: User?
    var userId: Int
    var databaseHelper = DatabaseHelper()
    
    var body: some View {
        VStack {
//            if let user = user {
                VStack(spacing: 16) {
                    // Display user profile information
                    Text("Jane Doe")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    // Profile Image
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .padding()

                    // Height
                    Text("Height: 5\' 5\"")
                    
                    // Weight
                    Text("Weight: 130 lbs")
                    
                    // Activity Level
                    Text("Activity Level: Very Active")
                    
                    // Year Joined
                    Text("Joined: 2025")

                    // Edit button to go to the EditProfileView
                    Button(action: { }) {
                        Text("Edit Profile")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                }
                .padding()
//            } else {
//                // Loading state
//                Text("Loading...")
//            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(userId: 1)
    }
}
