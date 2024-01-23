//
//  HowToPlayView.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 04/07/1445 AH.
//

import SwiftUI

struct HowToPlayView: View {
    @State private var primaryButtonTapped = false
    
    var body: some View {
        
        VStack {
            ZStack {
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 320, height: 480)
                .background(Color(red: 1, green: 0.97, blue: 0.86))
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                VStack{
                    Text("How to Play")
                        .font(.system(size: 36))
                        .fontWeight(.heavy)
                        .padding(.bottom)
                    
                    Text("Try to discover as many correct words as possible consisting of letters in the shortest time")
                        .font(.system(size: 32))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 310, alignment: .centerLastTextBaseline)
                    
                    Image("Brain1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 164, height: 164)
                        .clipped()
                    
                }
                .padding(60)
            }
            Button(action: {
                primaryButtonTapped = true
            }) {
                NavigationLink(destination: CountdownView()) {
                    ZStack{
                        Text("Let’s play")
                            .font(
                                Font.custom("SF Pro", size: 40)
                                    .weight(.bold))
                            .foregroundColor(.black)
                            .frame(width: 315, height: 80)
                            .background(Color(red: 0.99, green: 0.78, blue: 0))
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 4)
                        
                    }
                }
            }
            .padding(30)
        }
    }
}
    #Preview {
        HowToPlayView()
    }
