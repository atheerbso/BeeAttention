///
//  ContentView.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 09/07/1445 AH.
//

import SwiftUI

struct CountdownView: View {
    @StateObject private var viewModel = CountdownViewModel()
    @State private var answer: String = ""

    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 363, height: 542)
                    .background(Color(red: 1, green: 0.97, blue: 0.86))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    .frame(width: 330, height: 500)
                    .background(Color(red: 0.99, green: 0.78, blue: 0))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 4)
                
                TextField("   Enter your Answer", text: $answer)
                    .multilineTextAlignment(.leading)
                  .foregroundColor(.clear)
                  .frame(width: 364, height: 50)
                  .background(Color(red: 1, green: 0.97, blue: 0.86))
                  .cornerRadius(15)
                  .overlay(
                    RoundedRectangle(cornerRadius: 15)
                      .inset(by: 2.5)
                      .stroke(Color(red: 0.99, green: 0.78, blue: 0), lineWidth: 5)
                  )
                .padding()
                   }
            
            if viewModel.countdown > 0 {
                Image("countdown\(viewModel.countdown)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .onAppear {
                        startCountdown(viewModel: viewModel)
                    }
            }

            // Hide the Image("Rectangle 24") when the timer ends
            if viewModel.isCountdownFinished {
                Color.clear // Placeholder to maintain ZStack structure
            } else {
                Image("Rectangle 24")
                    .frame(width: 431, height: 931)
                    .background(.black.opacity(0.44))
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
        }
    }
}

#Preview {
    CountdownView()
}
