//
//  TimerModel.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 18/07/1445 AH.
//

import Foundation

struct TimerModel {
    var spentTime: CGFloat = 0
    var remainingTime: Int = 60
    var isTimerExpired = false
    var totalDuration: CGFloat = 60 
}
