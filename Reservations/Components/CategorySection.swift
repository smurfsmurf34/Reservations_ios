//
//  CategorySection.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import SwiftUI

struct CategorySection: View {
    let title: String
    let restaurants: [Restaurant]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(title)
                    .font(.system(size: 20, weight: .bold))
                Text("(\(restaurants.count) restaurant\(restaurants.count == 1 ? "" : "s"))")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                Spacer()
            }
            .padding(.horizontal, 16)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(restaurants) { restaurant in
                        RestaurantCard(restaurant: restaurant)
                            .frame(width: 380)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}
