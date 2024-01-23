//
//  LevelModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 05/07/1445 AH.
//

import Foundation

class LevelModel: ObservableObject {
    let id: Int
    let name: String
    @Published var sessions: [SessionModel]

    init(id: Int, name: String, sessions: [SessionModel]) {
        self.id = id
        self.name = name
        self.sessions = sessions
    }
}

   /* @Published var isUnlocked: Bool*/ // Assuming status is a string, you can adjust the type as needed
    // Other properties and methods related to the level


//        self.isUnlocked = isUnlocked
   





/// here the function related to the sesstion
func startNewSession() {
    // Logic to start a new stage
}

func updateScore() {
    // Logic to update the score
}

func updateTime() {
    // Logic to update the time
}
