//
//  CustomCircleView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 13.03.2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .customAppColorIndigoMedium,
                        .customAppColorSalomonLight],
                    startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 250, height: 250)
    }
}

#Preview {
    CustomCircleView()
}
