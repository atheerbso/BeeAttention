//
//  SessionlModel.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 05/07/1445 AH.
//

import Foundation

//class SessionModel: ObservableObject {
//    var totalwords: [String]
//    var movingLetters: [Character]
//    @Published var score: Int
//    @Published var currentIndex: Int
//    let interval: TimeInterval
//    var voiceFeedback: String
//    var guessedWord: Bool
//    var correctGussedword:Int
//    var currentWord: String
//    var hints: [String]
//    // Other properties and methods related to the session
//
//    init(totalwords: [String], movingLetters: [Character], score: Int, currentIndex: Int, interval: TimeInterval, voiceFeedback: String, guessedWord: Bool, correctGussedword: Int, currentWord: String, hints: [String]) {
//        self.totalwords = totalwords
//        self.movingLetters = movingLetters
//        self.score = score
//        self.currentIndex = currentIndex
//        self.interval = interval
//        self.voiceFeedback = voiceFeedback
//        self.guessedWord = guessedWord
//        self.correctGussedword = correctGussedword
//        self.currentWord = currentWord
//        self.hints = hints
//    }
//}



class SessionModel: ObservableObject {
    var words: [String]
    var letters: [Character]
    @Published var score: Int
    @Published var currentIndex: Int
    let interval: TimeInterval
    var hints: [String]
    var sounds: [String]

    init(words: [String], letters: [Character], score: Int, currentIndex: Int, interval: TimeInterval, hints: [String], sounds: [String]) {
        self.words = words
        self.letters = letters
        self.score = score
        self.currentIndex = currentIndex
        self.interval = interval
        self.hints = hints
        self.sounds = sounds
    }
}
