//
//  LearnView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI

struct LearnView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Spacer()
                        Text("Game 1")
                            .font(.title)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    NavigationLink {
                        Game1View()
                    } label: {
                        Text("Game 1")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.vertical, 40)
                            .padding(.horizontal, 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 2))
                    }
                        HStack {
                        Spacer()
                        Text("Game 2")
                            .font(.title)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    NavigationLink {
                        Game2View()
                    } label: {
                        Text("Game 2")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.vertical, 40)
                            .padding(.horizontal, 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 2))
                    }

                    HStack {
                        Spacer()
                        Text("Game 3")
                            .font(.title)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    NavigationLink {
                        Game3View()
                    } label: {
                        Text("Game 3")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.vertical, 40)
                            .padding(.horizontal, 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 2))
                    }
                    Spacer()
                }
                .navigationTitle("Learn")
            }
        }
    }
}
#Preview {
    LearnView()
}
