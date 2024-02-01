//
//  HowToPlayView.swift
//  mindfitness
//
//  Created by Shahad Alhothali on 04/07/1445 AH.
//

import SwiftUI

struct HowToPlayView: View {
    @State private var primaryButtonTapped = false
    private var hasSeenHowToPlay: Bool {
         get {
             UserDefaults.standard.bool(forKey: "hasSeenHowToPlay")
         }
         set {
             UserDefaults.standard.set(newValue, forKey: "hasSeenHowToPlay")
         }
     }
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 320, height: 480)
                    .background(Color(red: 1, green: 0.97, blue: 0.86))
                    .cornerRadius(15)
//                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                VStack{
                    
                    Text("How to Play")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .padding(.bottom)
                    
                    Image("Brain1")
                        .resizable()
                    //                        .aspectRatio(contentMode: .fill)
                        .frame(width: 164, height: 164)
                        .clipped()
                    //
                    Text("Try to discover as many correct words as possible consisting of letters in the shortest time\n\nNote: When you unlock a new level, more words will be added, and the length of the words will increase. ")
                        .font(Font.custom("SF Pro", size: 21))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black.opacity(0.8))
                        .frame(width: 280, alignment: .top)
                    
                }
                .padding(60)
            }
                .background(
                    Image("Wallpaper") // Replace with your image name
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                )
            
                Button(action: {
                    primaryButtonTapped = true
                }) {
                    NavigationLink(destination: CountdownView()) {
                        ZStack{
                            Text("Let’s play")
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
        
        
        .onAppear {
                   // Check if the user has seen the HowToPlayView before
                   if !hasSeenHowToPlay {
                       DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                           // Present the HowToPlayView after a delay
                           primaryButtonTapped = true
                          
                       }
                   }
               }
        
//        .navigationBarTitle("", displayMode: .inline)
        
        
        }
}
    #Preview {
        HowToPlayView()
    }
