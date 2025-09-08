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
    @StateObject var singleSizedBedModel = SingleSizedBedModel()
    @StateObject var kingSizedBedModel = KingSizedBedModel()
    @StateObject var lampModel = LampModel()
    @StateObject var bookshelfModel = BookshelfModel()
    @StateObject var armchairModel = ArmchairModel()
    @StateObject var washingMachineModel = WashingMachineModel()
    @StateObject var coffeeStationModel = CoffeeStationModel()
    @StateObject var kitchenCounterModel = KitchenCounterModel()

        var body: some View {
            NavigationStack {
                ZStack {
                    Color(red: 255/255, green: 248/255, blue: 232/255)
                        .ignoresSafeArea()

                    Image("Room")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 370)

                    // Show if purchased
                    if bedModel.isCrappyBedPurchased {
                        Image("CrappyBed")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 150, y: 400) // Adjust coordinates
                    }
                    
                    if singleSizedBedModel.isSingleSizedBedPurchased {
                        Image("SingleSizedBed")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 200, y: 400)
                    }
                    if kingSizedBedModel.isKingSizedBedPurchased {
                        Image("KingSizedBed")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 100, y: 400) // Adjust coordinates
                    }
                        
                    if lampModel.isLampPurchased {
                        Image("Lamp")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 300, y: 400) // Adjust coordinates
                    }
                    if bookshelfModel.isBookshelfPurchased {
                        Image("Bookshelf")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 110, y: 300) // Adjust coordinates
                    }
                    if armchairModel.isArmchairPurchased {
                        Image("Armchair")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 150, y: 450) // Adjust coordinates
                    }
                    if washingMachineModel.isWashingMachinePurchased {
                        Image("WashingMachine")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 342, y: 200) // Adjust coordinates
                    }
                    if coffeeStationModel.isCoffeeStationPurchased {
                        Image("CoffeeStation")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 180, y: 400) // Adjust coordinates
                    }
                    if kitchenCounterModel.isKitchenCounterPurchased {
                        Image("KitchenCounter")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .position(x: 100, y: 400) // Adjust coordinates
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
                                ShopNormalRoomView(
                                    bedModel: bedModel,
                                    singleSizedBedModel: singleSizedBedModel,
                                    kingSizedBedModel: kingSizedBedModel,
                                    lampModel: lampModel,
                                    bookshelfModel: bookshelfModel,
                                    armchairModel: armchairModel,
                                    washingMachineModel: washingMachineModel,
                                    coffeeStationModel: coffeeStationModel,
                                    kitchenCounterModel: kitchenCounterModel
                                )
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
