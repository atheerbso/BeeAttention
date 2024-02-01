//
//  LevelModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 05/07/1445 AH.
//

import Foundation

class LevelModel: ObservableObject , Identifiable{
    
    let id: UUID
    let name: String
    let index: Int
    let time:  Int //TimeInterval
    let scoreImg : String
    let timeImg : String
    let checkImg : String
    let lockImg : String
    let sessions:SessionModel
    @Published var isUnlocked: Bool // Assuming status is a string, you can adjust the type as needed
    
    // Other properties and methods related to the level

    init(id: UUID, name: String, index: Int, time: Int, sessions: SessionModel, isUnlocked: Bool , scoreImg : String , timeImg : String , checkImg : String , lockImg : String ) {
        self.id = id
        self.name = name
        self.index = index
        self.time = time
        self.sessions = sessions
        self.isUnlocked = isUnlocked
        self.lockImg = lockImg
        self.checkImg = checkImg
        self.scoreImg = scoreImg
        self.timeImg = timeImg
        
    }
}





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


