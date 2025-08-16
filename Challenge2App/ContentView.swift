//
//  ContentView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image("Hotel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Spacer()
                    VStack {
                        Spacer()
                        NavigationLink {
                            NormalRoomView()
                        } label: {
                            Text("Enter Room 1")
                                .foregroundColor(.black)
                                .padding()
                                .background(.white)
                                .cornerRadius(8)
                        }
                        .padding()
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Spacer()
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        NavigationLink {
                            BuffetAreaView()
                        } label: {
                            Text("Enter Room 3")
                                .foregroundColor(.black)
                                .padding()
                                .background(.white)
                                .cornerRadius(8)
                        }
                        .padding()
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack {
                        Spacer()
                        NavigationLink {
                            LoungeView()
                        } label: {
                            Text("Enter Room 2")
                                .foregroundColor(.black)
                                .padding()
                                .background(.white)
                                .cornerRadius(8)
                        }
                        .padding()
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack {
                        Spacer()
                        Spacer()
                        NavigationLink {
                            SuiteView()
                        } label: {
                            Text("Enter Room 4")
                                .foregroundColor(.black)
                                .padding()
                                .background(.white)
                                .cornerRadius(8)
                        }
                        .padding()
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                }
                
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()

                    HStack {
                        Spacer()
                        Spacer()
                        Image(systemName: "checklist.checked.rtl")
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Image(systemName: "building")
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Image(systemName: "questionmark")
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink {
                            MCQView()
                        } label: {
                            Text("MCQ")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color(red: 255/255, green: 248/255, blue: 232/255)
                                    .cornerRadius(8))
                        }
                        .padding()
                        
                        Spacer()
                        NavigationLink {
                            ContentView()
                        } label: {
                            Text("My Hotel")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color(red: 255/255, green: 248/255, blue: 232/255)
                                    .cornerRadius(8))
                        }
                        .padding()
                        Spacer()
                        NavigationLink {
                            LearnView()
                        } label: {
                            Text("Learn")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color(red: 255/255, green: 248/255, blue: 232/255)
                                    .cornerRadius(8))
                        }
                        .padding()
                        Spacer()
                    }
                                    }
                                    .navigationTitle("My Hotel")
                            
                            
                        }
            }
        }
    }

#Preview {
    ContentView()
}
