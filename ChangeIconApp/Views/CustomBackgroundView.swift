//
//  CustomBackgroundView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 12.03.2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // Depth
            Color.customAppColorGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            // Light
            Color.customAppColorGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.75)
            // Surface
            LinearGradient(
                colors: [
                    .customAppColorGreenLight,
                    .customAppColorGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
}
