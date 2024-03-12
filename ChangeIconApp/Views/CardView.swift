//
//  CardView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 12.03.2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .customAppColorIndigoMedium,
                        .customAppColorSalomonLight],
                    startPoint: .topTrailing,
                    endPoint: .bottomTrailing)
                )
                .frame(width: 250, height: 250)
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
        .frame(width: 320, height: 450)
    }
}

#Preview {
    CardView()
}
