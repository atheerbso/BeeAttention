//
//  SplashView.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 04/07/1445 AH.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            WelcomView()
        } else {
            VStack {
                Image("Icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 220)
                    .opacity(isActive ? 0 : 1)
            }
            .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation {
            self.isActive = true
               }
              }
             }
            .transition(.slide)
        }
      
    }
        
}

#Preview {
    SplashView()
}
