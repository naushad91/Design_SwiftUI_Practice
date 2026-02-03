//
//  StickyHeaderScreen.swift
//  DesignPracticeSwiftUI
//
//  Created by Naushad Ali Khan on 04/02/26.
//

import SwiftUI
struct StickyHeaderScreen: View {

    var body: some View {
        ScrollView {
            LazyVStack(
                pinnedViews: [.sectionHeaders]
            ) {

                Section {

                    // ✅ Scrollable content
                    ForEach(0..<20) { i in
                        ContentCard(i: i)
                    }

                } header: {

                    // ✅ This becomes sticky automatically
                    StickyHeaderView()
                }
            }
        }
        .background(Color.black)
    }
}

#Preview {
    StickyHeaderScreen()
}
