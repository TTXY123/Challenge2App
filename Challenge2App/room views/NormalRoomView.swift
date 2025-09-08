//
//  NormalRoomView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI

struct NormalRoomView: View {
    @Binding var money: Int
        @State private var showModal = false
        @StateObject var bedModel = CrappyBedModel()

        var body: some View {
            NavigationStack {
                ZStack {
                    Color(red: 255/255, green: 248/255, blue: 232/255)
                        .ignoresSafeArea()

                    Image("Room")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 370)

                    // Show bed if purchased
                    if bedModel.isCrappyBedPurchased {
                        Image("CrappyBed")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 150, y: 400) // Adjust coordinates as needed
                    }

                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()

                        HStack {
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()

                            Button("Shop") {
                                showModal = true
                            }
                            .padding()
                            .sheet(isPresented: $showModal) {
                                ShopNormalRoomView(bedModel: bedModel)
                            }

                            Spacer()
                        }

                        Spacer()
                    }
                }
                .navigationTitle("Room")
            }
        }
    }

    #Preview {
        NormalRoomView(money: .constant(0))
    }
