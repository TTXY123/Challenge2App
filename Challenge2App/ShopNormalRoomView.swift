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
                
                ZStack {
                    VStack {
                        Spacer()
                        
                        HStack {  //row 1 starts
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
                        HStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                        } //row 1 end
                        Spacer()
                        HStack {  //row 2 starts
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
                        HStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                        } //row 2 end
                        Spacer()

                        HStack {  //row 3 starts
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
                        HStack {
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2))
                            Spacer()
                        } //row 3 end
                        Spacer()
                        Spacer()
                        Spacer()

                    }
                    
                    .navigationTitle("Shop")
                }
            }
        }
    }
}
#Preview {
    ShopNormalRoomView()
}
