//
//  CenterExpandBarView.swift
//  UIpractice
//
//  Created by Naushad Ali Khan on 03/02/26.
//

import SwiftUI
struct CenterExpandBarView: View {

    @State private var expanded = false

    var body: some View {
        GeometryReader { geo in

            Capsule()
                .fill(
                    LinearGradient(
                        colors: [.purple, .pink],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(
                    width: expanded ? geo.size.width * 0.95 : 8,
                    height: 4.5
                )
                .shadow(color: .purple.opacity(0.6), radius: 10)

                // ✅ edge fade mask
                .mask(
                    LinearGradient(
                        stops: [
                            .init(color: .clear, location: 0),
                            .init(color: .white, location: 0.15),
                            .init(color: .white, location: 0.85),
                            .init(color: .clear, location: 1)
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )

                .position(
                    x: geo.size.width / 2,
                    y: geo.size.height / 2
                )
                .animation(.easeOut(duration: 1), value: expanded)
        }
        .frame(height: 24)
        .onAppear {
            expanded = true
        }
    }
}


#Preview {
    CenterExpandBarView()
}
//struct CenterExpandBarView: View {
//
//    @State private var expanded = false
//
//    var body: some View {
//        GeometryReader { geo in
//
//            Capsule()
//                .fill(
//                    LinearGradient(
//                        colors: [.purple, .pink],
//                        startPoint: .leading,
//                        endPoint: .trailing
//                    )
//                )
//                .frame(
//                    width: expanded ? geo.size.width * 0.9 : 10,
//                    height: 6
//                )
//                .shadow(color: .purple.opacity(0.7), radius: 8)
//                .position(
//                    x: geo.size.width / 2,
//                    y: geo.size.height / 2
//                )
//                .animation(.easeOut(duration: 1.2), value: expanded)
//        }
//        .frame(height: 20)
//        .onAppear {
//            expanded = true
//        }
//    }
//}

//LinearGradient(
//    colors: [ Color(red: 235/255, green: 220/255, blue: 255/255), Color(red: 210/255, green: 185/255, blue: 255/255), Color(red: 245/255, green: 235/255, blue: 255/255) ],                startPoint: .topLeading,
//    endPoint: .bottomTrailing
//)
