//
//  ShopNormalRoomView.swift
//  Challenge2App
//
//  Created by Tiffany on 21/8/25.
//

import SwiftUI

struct ShopNormalRoomView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    // Row 1 Title
                    HStack {
                        Spacer()
                        Text("Beds")
                            .font(.title)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }

                    // Row 1 Buttons
                    HStack {
                        Spacer()
                        // Button 1 with CrappyBed
                        Button(action: {}) {
                            ZStack {
                                Image("CrappyBed")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                Rectangle()
                                  .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                  .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                            }
                        }
                        Spacer()
                        // Button 2
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("KingSizedBed")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        // Button 3
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                    }

                    Spacer()

                    // Row 2 Title
                    HStack {
                        Spacer()
                        Text("Furniture")
                            .font(.title)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }

                    // Row 2 Buttons
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                    }

                    Spacer()

                    // Row 3 Title
                    HStack {
                        Spacer()
                        Text("Utilities")
                            .font(.title)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }

                    // Row 3 Buttons
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {}) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                    }

                    Spacer()
                    Spacer()
                    Spacer()
                }
                .navigationTitle("Shop")
            }
        }
    }
}

#Preview {
    ShopNormalRoomView()
}
