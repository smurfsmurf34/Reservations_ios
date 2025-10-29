//
//  DiscoverView.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import SwiftUI

struct DiscoverView: View {
    @State private var selectedCity = "New York City"

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Location and Search Header
                    VStack(spacing: 12) {
                        HStack {
                            Menu {
                                Button("New York City") { selectedCity = "New York City" }
                                Button("Los Angeles") { selectedCity = "Los Angeles" }
                                Button("San Francisco") { selectedCity = "San Francisco" }
                                Button("Chicago") { selectedCity = "Chicago" }
                            } label: {
                                HStack(spacing: 4) {
                                    Text(selectedCity)
                                        .font(.system(size: 28, weight: .bold))
                                        .foregroundColor(.primary)
                                    Image(systemName: "chevron.down")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(.primary)
                                }
                            }
                            Spacer()

                            // Circular Search Button
                            Button(action: {
                                // Open search
                            }) {
                                Image(systemName: "magnifyingglass")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.primary)
                                    .frame(width: 40, height: 40)
                                    .background(Color(.systemGray6))
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.horizontal, 16)

                        // Filter Buttons
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 8) {
                                FilterButton(icon: "person.2", title: "Party") {}
                                FilterButton(icon: "clock", title: "Time") {}
                                FilterButton(icon: "calendar", title: "Date") {}
                                FilterButton(icon: "fork.knife", title: "Cuisine") {}
                                FilterButton(icon: "bookmark", title: "Saved") {}
                            }
                            .padding(.horizontal, 16)
                        }
                    }

                    // Category Sections
                    CategorySection(
                        title: "Available Tonight",
                        restaurants: SampleData.availableTonight
                    )

                    CategorySection(
                        title: "Michelin Starred",
                        restaurants: SampleData.michelinStarred
                    )

                    CategorySection(
                        title: "Italian",
                        restaurants: SampleData.italian
                    )

                    CategorySection(
                        title: "Steakhouse",
                        restaurants: SampleData.steakhouse
                    )
                }
                .padding(.vertical)
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    DiscoverView()
}
