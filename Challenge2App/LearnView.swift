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
                        Text("Level 1")
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
                        Text("Level 2")
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
                        Text("Level 2")
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
                        Game1Level2View()
                    } label: {
                        Text("Level 2")
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
                        Text("Level 3")
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
                        Game1Level3View()
                    } label: {
                        Text("Level 3")
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
