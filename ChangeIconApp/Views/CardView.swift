//
//  CardView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 12.03.2024.
//

import SwiftUI

struct CardView: View {
    @State var imageNumber: Int = 1
    @State var randomNumber: Int = 1
    
    var body: some View {
        //MARK: - Card
        ZStack {
            CustomBackgroundView()
            VStack {
                //MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Title")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customAppColorGrayLight,
                                        .customAppColorGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        Spacer()
                        Button {
                            // Add action on tap
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Multiline subtitle long text with some attributes")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customAppColorGrayMedium)
                }
                .padding(.horizontal, 30)
                
                //MARK: - Main content
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeInOut, value: imageNumber)
                }
                
                //MARK: - Bottom view
                Button {
                    repeat {
                        randomNumber = Int.random(in: 1...5)
                    } while imageNumber == randomNumber
                    imageNumber = randomNumber
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customAppColorGreenLight,
                                    .customAppColorGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
        .frame(width: 320, height: 550)
    }
}

#Preview {
    CardView()
}
