import SwiftUI

struct ShopNormalRoomView: View {
    @ObservedObject var bedModel: CrappyBedModel
    @ObservedObject var singleSizedBedModel: SingleSizedBedModel
    @ObservedObject var kingSizedBedModel: KingSizedBedModel
    @ObservedObject var lampModel: LampModel
    @ObservedObject var bookshelfModel: BookshelfModel
    @ObservedObject var armchairModel: ArmchairModel
    @ObservedObject var washingMachineModel: WashingMachineModel
    @ObservedObject var coffeeStationModel: CoffeeStationModel
    @ObservedObject var kitchenCounterModel: KitchenCounterModel





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
                    }

                    // Row 1 Buttons
                    HStack {
                        Spacer()
                        // Button 1 with CrappyBed
                        Button(action: {
                            bedModel.isCrappyBedPurchased = true
                        }) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("CrappyBed")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        // Button 2
                        Button(action: {
                            singleSizedBedModel.isSingleSizedBedPurchased = true
                        }) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("SingleSizedBed")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        // Button 3 - Placeholder
                        Button(action: {
                            kingSizedBedModel.isKingSizedBedPurchased = true
                        }) {
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
                    }

                    Spacer()
                    Text("Furniture")
                        .font(.title)
                    Spacer()

                    // Placeholder Furniture Row
                    HStack {
                        Spacer()
                        Button(action: {
                            lampModel.isLampPurchased = true
                        }) {

                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Lamp")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {
                            bookshelfModel.isBookshelfPurchased = true
                        }) {
                
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Bookshelf")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {
                            armchairModel.isArmchairPurchased = true

                        }) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("Armchair")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                    }

                    Spacer()

                    Text("Utilities")
                        .font(.title)
                    Spacer()

                    // Placeholder Utility Row
                    HStack {
                        Spacer()
                        Button(action: {
                            washingMachineModel.isWashingMachinePurchased = true

                        }) {
                       
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("WashingMachine")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {
                            coffeeStationModel.isCoffeeStationPurchased = true
                        }) {
                       
   
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("CoffeeStation")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        Button(action: {
                            kitchenCounterModel.isKitchenCounterPurchased = true
                        }) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                                Image("KitchenCounter")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                    }

                    Spacer()
                }
                .navigationTitle("Shop")
            }
        }
    }
}

#Preview {
    ShopNormalRoomView(bedModel: CrappyBedModel(), singleSizedBedModel: SingleSizedBedModel(), kingSizedBedModel: KingSizedBedModel(), lampModel: LampModel(), bookshelfModel: BookshelfModel(), armchairModel: ArmchairModel(), washingMachineModel: WashingMachineModel(),
                      coffeeStationModel: CoffeeStationModel(), kitchenCounterModel: KitchenCounterModel())

}
