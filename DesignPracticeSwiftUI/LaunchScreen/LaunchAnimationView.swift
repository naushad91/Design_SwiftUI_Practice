//
//  LaunchAnimationView.swift
//  UIpractice
//
//  Created by Naushad Ali Khan on 03/02/26.
//

import SwiftUI

struct LaunchAnimationView: View {

    @State private var logoVisible = false
    @State private var barsExpanded = false

    var body: some View {
        ZStack {

            // ✅ Dark purple gradient background
            LinearGradient(
                colors: [ Color(red: 235/255, green: 220/255, blue: 255/255), Color(red: 210/255, green: 185/255, blue: 255/255), Color(red: 245/255, green: 235/255, blue: 255/255) ],                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            // ✅ Center fading logo
            Image("gh-logo")   // ← your asset name
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .opacity(logoVisible ? 1 : 0.25)
                .scaleEffect(logoVisible ? 1 : 0.85)
                .animation(
                    .easeInOut(duration: 1.4),
//                        .repeatForever(autoreverses: true),
                    value: logoVisible
                )

            // ✅ Bottom expanding bars
            VStack {
                Spacer()


                CenterExpandBarView()
                    .padding(.bottom, 50)            }
        }
        .onAppear {
            logoVisible = true
            barsExpanded = true
        }
    }
}
#Preview {
    LaunchAnimationView()
}
