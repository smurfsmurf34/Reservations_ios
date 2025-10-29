//
//  RestaurantCard.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import SwiftUI

struct RestaurantCard: View {
    let restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(restaurant.name)
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Button(action: {
                    // Toggle saved state
                }) {
                    Image(systemName: restaurant.isSaved ? "bookmark.fill" : "bookmark")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }

            Text(restaurant.displayInfo)
                .font(.system(size: 15))
                .foregroundColor(.secondary)
                .padding(.bottom, 8)

            if !restaurant.availableSlots.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(restaurant.availableSlots) { slot in
                            TimeSlotButton(timeSlot: slot)
                        }
                    }
                }
                .frame(height: 60)
            } else if restaurant.hasAlert {
                Button(action: {
                    // Create alert
                }) {
                    HStack {
                        Spacer()
                        Image(systemName: "bell")
                            .font(.system(size: 14))
                        Text("Create Alert")
                            .font(.system(size: 16, weight: .medium))
                        Spacer()
                    }
                    .foregroundColor(.primary)
                    .padding(.vertical, 14)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                }
                .frame(height: 50)
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 2)
    }
}
