//
//  TimerViewModel.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 18/07/1445 AH.
//

import SwiftUI
import Combine

class TimerViewModel: ObservableObject {
    @Published private(set) var model = TimerModel()
    private var timerCancellable: AnyCancellable?
    
    init() {
        startTimer()
    }
    
            func startTimer() {
                timerCancellable = Timer.publish(every: 1, on: .main, in: .common)
                    .autoconnect()
                    .sink { _ in
                        withAnimation {
                            self.model.spentTime += 1
                            self.model.remainingTime -= 1
    
                            if self.model.remainingTime == 0 {
                                self.model.isTimerExpired = true
                                self.timerCancellable?.cancel()
                            }
                        }
                    }
            }
        }
    

