//
//  CustomLinearProgressBar.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 18/07/1445 AH.
//

import SwiftUI

struct CustomLinearProgressBar: View {
    @ObservedObject var timerViewModel: TimerViewModel

    var body: some View {
        VStack {
            if !timerViewModel.model.isTimerExpired {
                HStack {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .frame(width: 360, height: 14)
                                .foregroundColor(Color(red: 1, green: 0.97, blue: 0.86))
                                .cornerRadius(15)

                            Rectangle()
                                .frame(width: calculateProgressBarWidth(geometry: geometry), height: 14)
                                .foregroundColor(Color(red: 0.99, green: 0.78, blue: 0))
                                .cornerRadius(15)
                            Circle()
                                .frame(width: 14, height: 14)
                                .foregroundColor(.black) // Customize the color as needed
                                .offset(x: calculateProgressBarWidth(geometry: geometry) - 7, y: 0)

                            // here is the timer number (the counter)
//                            Text("\(Int(timerViewModel.model.remainingTime))")
//                                .font(.title3)
//                                .foregroundColor(.black)
//                                .offset(x: calculateProgressBarWidth(geometry: geometry) + 15)
                        }
                        .offset(x: -10)
                        .animation(.linear(duration: 1), value: timerViewModel.model.remainingTime)

                    }

                    Spacer()
                }
            } else {
                Text("Time's up!")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }

    func calculateProgressBarWidth(geometry: GeometryProxy) -> CGFloat {
        let availableWidth = geometry.size.width - 1
        let progressBarWidth = (CGFloat(timerViewModel.model.remainingTime) / CGFloat(timerViewModel.model.totalDuration)) * availableWidth
        return progressBarWidth
    }
}

