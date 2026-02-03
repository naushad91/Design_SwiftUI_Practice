//
//  TopAppBar.swift
//  DesignPracticeSwiftUI
//
//  Created by Naushad Ali Khan on 04/02/26.
//

import SwiftUI

struct TopAppBar: View {

    var body: some View {
        HStack {

            Text("daily.dev")
                .font(.title)
                .foregroundColor(.gray)
                .padding(.horizontal, 12)

            Spacer()
            
            Circle()
                .stroke(
                    Color.gray,
                    style: StrokeStyle(
                        lineWidth: 2,
                        dash: [6]
                    )
                )
                .frame(width: 32, height: 30);
                
            Divider()
                   .frame(height: 28)
                   .background(Color.white)
                   .padding(.horizontal, 12)
            
            Image(systemName: "bell")
                .font(.system(size: 22))

            Image(systemName: "gearshape")
                .font(.system(size: 22))
        }
        .foregroundColor(.white)
    }
}
#Preview {
    TopAppBar()
}
