//
//  MotionAnimationView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 13.03.2024.
//

import SwiftUI

struct MotionAnimationView: View {
    @State var randomCircle = Int.random(in: 6...14)
    @State var isAnimating = false
    
    // Random coordinate
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    // Random size
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 4...75))
    }
    // Random scale
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    // Random speed
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    // Random delay
    func randomDelay() -> Double {
        Double.random(in: 0...8)
    }
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                .foregroundColor(.white)
                .opacity(0.25)
                .position(CGPoint(x: randomCoordinate(), y: randomCoordinate()))
                .frame(width: randomSize())
                .scaleEffect(isAnimating ? randomScale() : 1)
                .onAppear(perform: {
                    withAnimation(
                        .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                        .repeatForever()
                        .speed(randomSpeed())
                        .delay(randomDelay())
                    ) {
                        isAnimating = true
                    }
                })
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
        .background {
            Circle()
                .fill(.teal)
        }
}
