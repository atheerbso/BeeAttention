//
//  WelcomView.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 04/07/1445 AH.
//

import SwiftUI

struct WelcomView: View {
    @State private var primaryButtonTapped = false

    var body: some View {
        NavigationView {
            
            VStack  {
                
//                Text("WELCOME TO")
//                    .font(Font.custom("SF Pro", size: 24))
//                    .foregroundColor(.black)
//                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 352)
                    .padding(.trailing, 40)
//                    .clipped()
                    
                
                Text("You don't use it, you lose it 🧠!\n \n exercise your mind daily to increase your attention, memory, and all your mental skills.")
                    .font(Font.custom("SF Pro", size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black.opacity(0.8))
                    .lineSpacing(2)
                    .frame(width: 360, height: 140, alignment: .top)
                    .padding()
                    .offset(y: -30)
                
                
               
                Button(action: {
                    primaryButtonTapped = true
                }) {
                    NavigationLink(destination: GameView()) {
                        ZStack{
                            Text("Let's get started")
                                .font(
                                    Font.custom("SF Pro", size: 24)
                                        .weight(.bold))
                                .foregroundColor(.black)
                                .frame(width: 300, height: 70)
                                .background(Color(red: 0.99, green: 0.78, blue: 0))
                                .cornerRadius(16)
                                .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
//                            
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("", displayMode: .inline)
    }
}
#Preview {
    WelcomView()
}
