//
//  SampleData.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import Foundation

struct SampleData {
    static let availableTonight: [Restaurant] = [
        Restaurant(
            name: "Katz's Delicatessen",
            cuisine: "Jewish Deli",
            neighborhood: "Lower East Side",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "12:00 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "2:00 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "6:00 PM", partySize: 2)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "The Smith",
            cuisine: "American",
            neighborhood: "Midtown",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "5:30 PM", partySize: 4),
                TimeSlot(date: "Oct 29", time: "7:00 PM", partySize: 4),
                TimeSlot(date: "Oct 29", time: "8:30 PM", partySize: 2)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "Balthazar",
            cuisine: "French",
            neighborhood: "SoHo",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "6:00 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "8:00 PM", partySize: 4),
                TimeSlot(date: "Oct 29", time: "9:30 PM", partySize: 2)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "Gramercy Tavern",
            cuisine: "American",
            neighborhood: "Gramercy",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "5:00 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "7:30 PM", partySize: 4)
            ],
            hasAlert: false
        )
    ]

    static let michelinStarred: [Restaurant] = [
        Restaurant(
            name: "Eleven Madison Park",
            cuisine: "Contemporary American",
            neighborhood: "Flatiron District",
            availableSlots: [],
            hasAlert: true
        ),
        Restaurant(
            name: "Le Bernardin",
            cuisine: "French Seafood",
            neighborhood: "Midtown West",
            availableSlots: [
                TimeSlot(date: "Nov 5", time: "5:30 PM", partySize: 2),
                TimeSlot(date: "Nov 8", time: "7:00 PM", partySize: 2)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "Per Se",
            cuisine: "Contemporary American",
            neighborhood: "Columbus Circle",
            availableSlots: [],
            hasAlert: true
        ),
        Restaurant(
            name: "Atomix",
            cuisine: "Korean",
            neighborhood: "Gramercy",
            availableSlots: [
                TimeSlot(date: "Nov 12", time: "6:00 PM", partySize: 2)
            ],
            hasAlert: false
        )
    ]

    static let italian: [Restaurant] = [
        Restaurant(
            name: "Don Angie",
            cuisine: "Italian",
            neighborhood: "West Village",
            availableSlots: [],
            hasAlert: true
        ),
        Restaurant(
            name: "Carbone",
            cuisine: "Italian",
            neighborhood: "Greenwich Village",
            availableSlots: [],
            hasAlert: true
        ),
        Restaurant(
            name: "L'Artusi",
            cuisine: "Italian",
            neighborhood: "West Village",
            availableSlots: [
                TimeSlot(date: "Oct 30", time: "5:30 PM", partySize: 2),
                TimeSlot(date: "Oct 31", time: "6:00 PM", partySize: 4),
                TimeSlot(date: "Nov 1", time: "7:30 PM", partySize: 2)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "Via Carota",
            cuisine: "Italian",
            neighborhood: "West Village",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "5:00 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "9:30 PM", partySize: 2)
            ],
            hasAlert: false
        )
    ]

    static let steakhouse: [Restaurant] = [
        Restaurant(
            name: "Peter Luger Steak House",
            cuisine: "Steakhouse",
            neighborhood: "Williamsburg",
            availableSlots: [],
            hasAlert: true
        ),
        Restaurant(
            name: "Keens Steakhouse",
            cuisine: "Steakhouse",
            neighborhood: "Midtown West",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "6:30 PM", partySize: 4),
                TimeSlot(date: "Oct 30", time: "7:00 PM", partySize: 2),
                TimeSlot(date: "Oct 31", time: "8:00 PM", partySize: 4)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "Wolfgang's Steakhouse",
            cuisine: "Steakhouse",
            neighborhood: "Tribeca",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "5:30 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "7:30 PM", partySize: 4)
            ],
            hasAlert: false
        ),
        Restaurant(
            name: "Quality Meats",
            cuisine: "Steakhouse",
            neighborhood: "Midtown West",
            availableSlots: [
                TimeSlot(date: "Oct 29", time: "6:00 PM", partySize: 2),
                TimeSlot(date: "Oct 29", time: "8:00 PM", partySize: 4),
                TimeSlot(date: "Oct 30", time: "7:00 PM", partySize: 2)
            ],
            hasAlert: false
        )
    ]
}
