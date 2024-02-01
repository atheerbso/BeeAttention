//
//  SessionlModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 05/07/1445 AH.
//

import Foundation

import Foundation

class SessionModel: ObservableObject {
    var totalwords: Int // STring?
//    var movingLetters: [Character]
    @Published var score: Int
    @Published var currentIndex: Int
    let interval: TimeInterval
    var voiceFeedback: String
    var guessedWord: Bool
    var correctGussedword:Int
    var currentWord: String
    var hints: [String]
    // Other properties and methods related to the session

    init(totalwords: Int/*, movingLetters: [Character]*/, score: Int, currentIndex: Int, interval: TimeInterval, voiceFeedback: String, guessedWord: Bool, correctGussedword: Int, currentWord: String, hints: [String]) {
        self.totalwords = totalwords
//        self.movingLetters = movingLetters
        self.score = score
        self.currentIndex = currentIndex
        self.interval = interval
        self.voiceFeedback = voiceFeedback
        self.guessedWord = guessedWord
        self.correctGussedword = correctGussedword
        self.currentWord = currentWord
        self.hints = hints
    }
    
    func CalculateScore(){
      
        //want to edit !
        if totalwords == correctGussedword{
            score+=10
        }
            
    }
}
