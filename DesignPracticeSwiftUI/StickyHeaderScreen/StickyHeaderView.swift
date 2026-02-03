//
//  StickyHeaderView.swift
//  DesignPracticeSwiftUI
//
//  Created by Naushad Ali Khan on 04/02/26.
//

import SwiftUI
struct StickyHeaderView: View {

    var body: some View {
        VStack(spacing: 12) {

            TopAppBar()

            TabRow()

        }
       
        .padding(.top, 8)
        .padding(.bottom, 12)
        .background(Color.black) // important for overlay effect
    }
}

#Preview {
    StickyHeaderView()
}
