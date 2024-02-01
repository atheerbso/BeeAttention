//
//  LevelViewModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 05/07/1445 AH.
//




import SwiftUI

extension LevelModel{
    
    static var LevelData : [LevelModel] =
    
    [
        
       
        
        .init(id: UUID.init() , name: "Level", index: 1, time: 60, sessions: SessionModel.SessionlData[0], isUnlocked: true , scoreImg : "star.circle.fill" , timeImg : "clock.fill" , checkImg : "checkmark.circle.fill" , lockImg : "lock.circle.fill") ,
        .init(id: UUID.init() , name: "Level", index: 2, time: 15, sessions: SessionModel.SessionlData[1], isUnlocked: false , scoreImg : "star.circle.fill" , timeImg : "clock.fill" , checkImg : "checkmark.circle.fill" , lockImg : "lock.circle.fill") ,
        .init(id: UUID.init() , name: "Level", index: 3, time: 4, sessions: SessionModel.SessionlData[2], isUnlocked: false , scoreImg : "star.circle.fill" , timeImg : "clock.fill" , checkImg : "checkmark.circle.fill" , lockImg : "lock.circle.fill"),
        
       
    ]
}
