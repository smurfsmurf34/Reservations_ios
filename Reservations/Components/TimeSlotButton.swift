//
//  TimeSlotButton.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import SwiftUI

struct TimeSlotButton: View {
    let timeSlot: TimeSlot

    var body: some View {
        Button(action: {
            // Handle reservation selection
        }) {
            VStack(spacing: 6) {
                HStack(spacing: 4) {
                    Text(timeSlot.date)
                        .font(.system(size: 11, weight: .medium))
                    Image(systemName: "person.2.fill")
                        .font(.system(size: 9))
                    Text("\(timeSlot.partySize)")
                        .font(.system(size: 11, weight: .medium))
                }
                Text(timeSlot.time)
                    .font(.system(size: 15, weight: .semibold))
            }
            .foregroundColor(.white)
            .frame(width: 100, height: 60)
            .background(Color.blue)
            .cornerRadius(8)
        }
    }
}
