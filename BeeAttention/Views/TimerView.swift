//
//  TimerView.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 18/07/1445 AH.
//

import SwiftUI
struct TimerView: View {
    @StateObject private var viewModel = TimerViewModel()

    var body: some View {
        VStack {
            CustomLinearProgressBar(timerViewModel: viewModel)
                .padding(3.0)
                .font(.title3)
                .fontWeight(.bold)
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    TimerView()
}
