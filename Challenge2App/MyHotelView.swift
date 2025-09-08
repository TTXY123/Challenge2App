//
//  MyHotelView.swift
//  Challenge2App
//
//  Created by Tiffany on 17/8/25.
//

import SwiftUI

struct MyHotelView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                
                ZStack {
                    
                    // Background color
                    Color(red: 255/255, green: 248/255, blue: 232/255)
                        .ignoresSafeArea()
                    
                    // Hotel Image
                    VStack {
                        Spacer()
                        Image("Hotel")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 400)
                        Spacer()
                    }
                    
                    // Room 1
                    HStack {
                        Spacer()
                        Spacer()
                        VStack {
                            Spacer()
                            NavigationLink {
                                NormalRoomView(money: .constant(0))
                            } label: {
                                Text(" Room       ")
                                    .foregroundColor(.black)
                                    .padding()
                                    .font(.system(size: 15))
                                    .background(Color.white)
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
                    
                    // Room 3
                    HStack {
                        Spacer()
                        Spacer()
                        VStack {
                            Spacer()
                            Spacer()
                            Spacer()
                            NavigationLink {
                                BuffetAreaView()
                            } label: {
                                Text("Buffet Area")
                                    .foregroundColor(.black)
                                    .padding()
                                    .font(.system(size: 15))
                                    .background(Color.white)
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
                    
                    // Room 2
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
                                Text(" Lounge      ")
                                    .foregroundColor(.black)
                                    .padding()
                                    .font(.system(size: 15))
                                    .background(Color.white)
                                    .cornerRadius(8)
                            }
                            .padding()
                            Spacer()
                            Spacer()
                        }
                        Spacer()
                        Spacer()
                    }
                    
                    // Room 4
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
                            Spacer()
                            NavigationLink {
                                SuiteView()
                            } label: {
                                Text("Suite           ")
                                    .foregroundColor(.black)
                                    .padding()
                                    .font(.system(size: 15))
                                    .background(Color.white)
                                    .cornerRadius(8)
                            }
                            .padding()
                            Spacer()
                            Spacer()
                        }
                        Spacer()
                        Spacer()
                    }
                }
            }
            .navigationTitle("Hotel")
        }
    }
}

#Preview {
    MyHotelView()
}
