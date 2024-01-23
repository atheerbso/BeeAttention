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
            
            VStack(alignment: .center) {
                
                Text("WELCOME TO")
                    .font(Font.custom("SF Pro", size: 24))
                    .foregroundColor(.black)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 549, height: 352)
                    .clipped()
                
                Text("“You don’t use it, you lose it.”\nFocusing on building your mental fitness improves concentration, focus, memory, and mental agility at any age.")
                    .font(Font.custom("SF Pro", size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 372, height: 97, alignment: .top)
                    .padding()
               
                Button(action: {
                    primaryButtonTapped = true
                }) {
                    NavigationLink(destination: GameView()) {
                        ZStack{
                            Text("START")
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
            }
        }
    }
}
#Preview {
    WelcomView()
}
