//
//  Models.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import Foundation

struct TimeSlot: Identifiable {
    let id = UUID()
    let date: String
    let time: String
    let partySize: Int
}

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let cuisine: String
    let neighborhood: String
    let availableSlots: [TimeSlot]
    let hasAlert: Bool

    var isSaved: Bool = false

    var displayInfo: String {
        "\(cuisine) • \(neighborhood)"
    }
}

enum FilterType {
    case party
    case time
    case date
    case cuisine
    case saved
}
