//
//  ContentView.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 09/07/1445 AH.
//

import SwiftUI

struct TryAgainView: View {
    @State private var primaryButtonTapped = false
    
    var body: some View {
        
        VStack {
            ZStack {
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 320, height: 480)
                .background(Color(red: 1, green: 0.97, blue: 0.86))
                .cornerRadius(15)
//                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                VStack{
                    Text("Give it one more try.")
                        .font(.system(size: 36))
                        .fontWeight(.heavy)
                        .padding(.bottom)
                    
                    Text("Keep your mind sharp! You're building resilience with every challenge.")
                        .font(.system(size: 32))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 310, alignment: .centerLastTextBaseline)
                    
                    Image("Brain3")
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
                        Text("Try Again")
                            .font(
                                Font.custom("SF Pro", size: 24)
                                    .weight(.bold))
                            .foregroundColor(.black)
                            .frame(width: 300, height: 70)
                            .background(Color(red: 0.99, green: 0.78, blue: 0))
                            .cornerRadius(16)
                            .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                    }
                }
            }
            .padding(30)
        }
    }
}
    #Preview {
        TryAgainView()
    }
