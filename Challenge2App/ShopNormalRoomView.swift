import SwiftUI

struct ShopNormalRoomView: View {
    @ObservedObject var bedModel: CrappyBedModel

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
                        // Button 2 - Placeholder
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
                                Image("SingleSizedBed")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                            }
                        }
                        Spacer()
                        // Button 3 - Placeholder
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
                    }

                    Spacer()
                    Text("Furniture")
                        .font(.title)
                    Spacer()

                    // Placeholder Furniture Row
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
                                Image("Lamp")
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
                                Image("Bookshelf")
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
                                Image("WashingMachine")
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
                                Image("CoffeeStation")
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
    ShopNormalRoomView(bedModel: CrappyBedModel())
}
