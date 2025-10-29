//
//  ProfileView.swift
//  Reservations
//
//  Created by Ioannis on 10/29/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .navigationBarHidden(true)
        }
    }
}
