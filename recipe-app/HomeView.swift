//
//  HomeView.swift
//  recipe-app
//
//  Created by harry on 29/12/1403 AP.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea(.container, edges: [.top])

                VStack {
                    Spacer()

                    Text("Healthy Food Decider")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.bottom, 8)

                    Text("Make Healthier Food Choices, Effortlessly.")
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 8)

                    Text("Your personal nutrition assistant that helps you plan, track, and improve your eating habits.")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    NavigationLink(destination: DiscoverView()) {
                        Text("Explore Recipes")
                            .bold()
                            .foregroundColor(.green)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(30)
                            .padding(.horizontal, 60)
                            .padding(.top, 30)
                    }

                    Spacer()

                    HStack {
                        Spacer()
                        NavigationLink(destination: AboutView()) {
                            HStack {
                                Image(systemName: "person.3.fill")
                                Text("Meet The Team")
                                    .bold()
                            }
                            .foregroundColor(.green)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.white)
                            .cornerRadius(30)
                            .padding()
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }



#Preview {
    HomeView()
}

