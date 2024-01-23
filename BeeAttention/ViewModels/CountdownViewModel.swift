//
//  CountdownViewModel.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 11/07/1445 AH.
//

import SwiftUI

class CountdownViewModel: ObservableObject {
    @Published var countdown: Int = 4
    @Published var isCountdownFinished = false
}

func startCountdown(viewModel: CountdownViewModel) {
    Timer.scheduledTimer(withTimeInterval: 1.2, repeats: true) { timer in
        withAnimation {
            viewModel.countdown -= 1
        }

        if viewModel.countdown == 0 {
            timer.invalidate()
            withAnimation {
                viewModel.isCountdownFinished = true
            }
        }
    }
}
