//
//  NormalRoomView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI

struct BuffetAreaView: View {
    @State private var showModal = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 248/255, blue: 232/255)
                    .ignoresSafeArea()
                
                Image("Room")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 370)
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Button("Shop", systemImage: "plus.square.on.square") {
                            showModal = true
                        }
                        .sheet(isPresented: $showModal) {
                            ShopNormalRoomView()
                        }
                        Spacer()
                    }
                    Spacer()
                    
                }
            }
            .navigationTitle("Buffet Area")
            
        }
    }
}

#Preview {
    BuffetAreaView()
}
