//
//  TabRow.swift
//  DesignPracticeSwiftUI
//
//  Created by Naushad Ali Khan on 04/02/26.
//

import SwiftUI

struct TabRow: View {

    @State private var selected = 0
    let tabs = ["For you", "Following", "Discussions", "Tags"]

    var body: some View {
        HStack(spacing: 8) {
            ForEach(tabs.indices, id: \.self) { i in
                Text(tabs[i])
                    .foregroundColor(selected == i ? .white : .gray)
                    .padding(.vertical, 7)
                    .padding(.horizontal, 14)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(selected == i ? Color.gray.opacity(0.25) : .clear)
                    )
                    .onTapGesture {
                        selected = i
                    }
            }
        }
    }
}

#Preview {
    TabRow()
}
