//
//  FilterButton.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import SwiftUI

struct FilterButton: View {
    let icon: String
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: 14))
                Text(title)
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Color(.systemGray6))
            .foregroundColor(.primary)
            .clipShape(Capsule())
        }
    }
}
