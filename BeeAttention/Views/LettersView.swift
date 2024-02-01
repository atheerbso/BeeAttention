//
//  LettersView.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 16/07/1445 AH.
//

import SwiftUI
struct LettersView: View {
    @ObservedObject var lettersVM: LettersViewModel

    var body: some View {
        HStack {
            Image(lettersVM.letters.letterImage) // Use the image name directly
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100.0, height: 100.0)
        }
    }
}

// Preview.swift
struct LettersView_Previews: PreviewProvider {
    static var previews: some View {
        LettersView(lettersVM: LettersViewModel(letters: Letters(id: UUID(), letterName: "A", letterImage: "")))
        
    }
}


//#Preview {
//    LettersView()
//}
