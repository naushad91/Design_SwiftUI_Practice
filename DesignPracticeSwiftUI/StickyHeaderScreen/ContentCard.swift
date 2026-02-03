//
//  ContentCard.swift
//  DesignPracticeSwiftUI
//
//  Created by Naushad Ali Khan on 04/02/26.
//

import SwiftUI

struct ContentCard: View {
    let i: Int

    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(Color.gray.opacity(0.2))
            .frame(height: 140)
            .overlay(Text("Card \(i)").foregroundColor(.white))
            .padding()
    }
}

#Preview {
    ContentCard(i: 5)
}
