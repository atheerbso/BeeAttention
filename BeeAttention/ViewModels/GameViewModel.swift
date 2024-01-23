//
//  GameViewModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 05/07/1445 AH.
//
import SwiftUI
class GameViewModel: ObservableObject {
    @Published var games: [GameModel] = []
    
    
    init() {
        createGames()
    }
    
   func createGames() {
       
    games = [
        
        GameModel(id: 1, name: "Letters to a word", type: "Attention", image: "image1", isLocked: false, destinationView: { AnyView(GameLevels()) }),
         
        GameModel(id: 2, name: "Puzzle", type: "Memory", image: "image2", isLocked: true, destinationView:{ AnyView(Game2Levels()) }),
        
        GameModel(id: 3, name: "Puzzle", type: "Problem Solving", image: "image3", isLocked: true, destinationView: { AnyView(Game3Levels()) }),
        
        GameModel(id: 4, name: "Puzzle", type: "Strategy", image: "image4", isLocked: true, destinationView: { AnyView(Game4Levels()) }),
                 // Add more games as needed
        
            ]
    }
}
        
//
//        return [
//            GameModel(id: 1, name: "Game 1", image: "game1", levels: [
//                LevelModel(id: 1, name: "Level 1", sessions: [
//                    SessionModel(words: ["apple", "banana"], letters: ["a", "b"], score: 0, currentIndex: 0, interval: 10, hints: ["Hint 1"], sounds: ["sound1.mp3"]),
//                    SessionModel(words: ["orange", "grape"], letters: ["o", "g"], score: 0, currentIndex: 0, interval: 15, hints: ["Hint 2"], sounds: ["sound2.mp3"])
//                ]),
//                LevelModel(id: 2, name: "Level 2", sessions: [
//                    SessionModel(words: ["cat", "dog"], letters: ["c", "d"], score: 0, currentIndex: 0, interval: 12, hints: ["Hint 3"], sounds: ["sound3.mp3"]),
//                    SessionModel(words: ["bird", "fish"], letters: ["b", "f"], score: 0, currentIndex: 0, interval: 18, hints: ["Hint 4"], sounds: ["sound4.mp3"])
//                ])
//            ]),
//            // Add more GameModel instances as needed
//        ]
//    }
//}
