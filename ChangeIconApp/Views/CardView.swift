//
//  CardView.swift
//  ChangeIconApp
//
//  Created by Evgeniy Zelinskiy on 12.03.2024.
//

import SwiftUI

struct CardView: View {
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
            }
        }
        .frame(width: 320, height: 550)
    }
}

#Preview {
    CardView()
}
