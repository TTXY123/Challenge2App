//
//  File.swift
//  Challenge2App
//
//  Created by T Krobot on 8/9/25.
//

import Foundation
import SwiftUI

class CrappyBedModel: ObservableObject {
    @Published var isCrappyBedPurchased: Bool = false
}

class SingleSizedBedModel: ObservableObject {
    @Published var isSingleSizedBedPurchased: Bool = false
}

class KingSizedBedModel: ObservableObject {
    @Published var isKingSizedBedPurchased: Bool = false
}

class LampModel: ObservableObject {
    @Published var isLampPurchased: Bool = false
}

class WashingMachineModel: ObservableObject {
    @Published var isWashingMachinePurchased: Bool = false
}

class BookshelfModel: ObservableObject {
    @Published var isBookshelfPurchased: Bool = false
}

class KitchenCounterModel: ObservableObject {
    @Published var isKitchenCounterPurchased: Bool = false
}

class CoffeeStationModel: ObservableObject {
    @Published var isCoffeeStationPurchased: Bool = false
}

class ArmchairModel: ObservableObject {
    @Published var isArmchairPurchased: Bool = false
}
