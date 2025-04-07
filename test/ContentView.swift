//
//  ContentView.swift
//  test
//
//  Created by Mamiko Nakamura on 2024/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var welcomeText = "ようこそ！"
    @State private var descriptionText = "素敵な一日をお過ごしください"
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "party.popper.fill")
                .imageScale(.large)
                .font(.system(size: 60))
                .foregroundStyle(.pink)
                .offset(y: isAnimating ? 0 : -50)
                .opacity(isAnimating ? 1 : 0)
            
            Text(welcomeText)
                .font(.largeTitle)
                .bold()
                .offset(y: isAnimating ? 0 : 20)
                .opacity(isAnimating ? 1 : 0)
            
            Text(descriptionText)
                .font(.title2)
                .foregroundColor(.gray)
                .offset(y: isAnimating ? 0 : 20)
                .opacity(isAnimating ? 1 : 0)
        }
        .padding()
        .onAppear {
            withAnimation(.easeOut(duration: 1.0)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    ContentView()
}
