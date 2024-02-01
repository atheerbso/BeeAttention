//
//  lettersViewModel.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 16/07/1445 AH.
//

import Foundation
import SwiftUI

class LettersViewModel: ObservableObject {
    @Published var letters: Letters

    init(letters: Letters) {
        self.letters = letters
        updateLetter()
    }

    private func updateLetter() {
        let defaultImageName = "questionmark" // Provide a default image name
        let uppercasedLetter = letters.letterName.uppercased()
        letters.letterImage = imageDictionary[Character(uppercasedLetter)] ?? defaultImageName
    }
}
