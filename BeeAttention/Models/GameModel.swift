//
//  GameModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 04/07/1445 AH.
//
import SwiftUI
import Foundation
class GameModel: Identifiable {
    let id: Int
    let name: String
    let type: String
    let image: String
    var isLocked: Bool
    let destinationView: (() -> AnyView)
    
    init(id: Int, name: String, type: String, image: String, isLocked: Bool, destinationView: (@escaping () -> AnyView)) {
        self.id = id
        self.name = name
        self.type = type
        self.image = image
        self.isLocked = isLocked
        self.destinationView = destinationView
    }
}



    //    let destinationView: () -> AnyView
    
    
    
    
        //        self.destinationView = destinationView
    

    
//    init(id: Int, name: String, image: String, destinationView: @escaping () -> AnyView) {
//        self.id = id
//        self.name = name
//        self.image = image
//        self.destinationView = destinationView
//    }
//}
//
//
//class GameModel: ObservableObject {
//    let id: UUID
//    let name: String
//    let picture: String // Assuming picture is a URL or image name
//    @Published var levels: [LevelModel]
//    @Published var currentLevelIndex: Int
//
//    init(id: UUID, name: String, picture: String, levels: [LevelModel] = [], destinationView: @escaping () -> AnyView) {
//        self.id = id
//        self.name = name
//        self.image = string
//        self.levels = levels
//        self.currentLevelIndex = 0
//    }
