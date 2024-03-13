//
//  GradientButtonStyle.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 13.03.2024.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [.customAppColorGrayLight, .customAppColorGrayMedium], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [.customAppColorGrayMedium, .customAppColorGrayLight], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}

