//
//  CustomButtonView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 12.03.2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customAppColorGreenLight,
                            .customAppColorGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            Circle()
                .stroke(LinearGradient(
                    colors: [
                        .customAppColorGrayLight,
                        .customAppColorGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom),
                        lineWidth: 4)
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [
                        .customAppColorGrayLight,
                        .customAppColorGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
