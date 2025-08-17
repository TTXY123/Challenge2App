//
//  ContentView.swift
//  Challenge2App
//
//  Created by Tiffany on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                
                TabView {
                    Tab("My Hotel", systemImage: "building") {
                        MyHotelView()
                    }
                    Tab("MCQ", systemImage: "checklist.checked.rtl") { MCQView()
                    }
                    Tab("Learn", systemImage: "questionmark") { LearnView() }
                }
                .navigationTitle("My Hotel")
            }
        }

#Preview {
    ContentView()
}
