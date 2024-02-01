//
//  GameView.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 06/07/1445 AH.
//

import SwiftUI

//struct GameView: View {
//    var gameVM = GameViewModel()
//    var body: some View {
//
//
//
//        VStack {
//
//            Text("Train your mind")
//                .font(Font.custom("SF Pro", size: 40))
//                .foregroundColor(.black)
//
//            Rectangle()
//                .foregroundColor(.clear)
//                .frame(width: 297.00168, height: 1)
//                .background(Color(red: 0.99, green: 0.78, blue: 0))
//
//            Spacer()
//            //            creatGameView()
//
//        }
//        .frame(maxWidth: .infinity, alignment: .leading)
//    }
    
    //
    //
    //        func creatGameView() -> some View {
    //            let GameList = gameVM.createGames()
    //            return ScrollView {
    //                LazyVGrid(columns: Array(repeating: GridItem(), count: 2), spacing: 20) {
    //                    ForEach(GameList, id: \.id) { Game in
    ////                                  NavigationLink(destination: games.destinationView, label: {
    //                            ZStack(alignment: .bottomTrailing){
    //                                Image("\(GameModel.image)")
    //                                    .resizable()
    //                                    .frame(width: 336.7, height: 180)
    //                                    .cornerRadius(10)
    //                                Image("yelloEffect")
    //                                    .resizable()
    //                                    .frame(width: 336.7, height: 180)
    //                                    .cornerRadius(10)
    //                                Text("\(GameModel.name)")
    //                                    .font(.system(size: 24))
    //                                    .fontWeight(.bold)
    //                                    .font(.headline)
    //                                    .foregroundColor(.white)
    //                                    .padding(10)
    //                            }
    //                            .padding([.leading, .trailing], 10)
    //                            .padding(.top, 10)
    //                        }
    //
    //                    }
    //                }
    //                .padding([.leading, .trailing], 30)
    //                .padding(.top, 10)
    //            }
    //        }
    //
    //
struct GameView: View {
    var gameVM = GameViewModel()

    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                Text("Train your mind")
                    .font(Font.custom("SF Pro", size: 34))
                    .foregroundColor(.black)
                    .padding([.leading, .trailing], 10)
                    .offset(y: 42)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 280.00168, height: 1)
                    .background(Color(red: 0.99, green: 0.78, blue: 0))
                    .padding(.bottom, 10)
                    .offset(y:36)
                ScrollView {
                    creatGameView()
                }

                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
            Image("Wallpaper") // Replace with your image name
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
//            .navigationTitle("Games")
                       )
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("", displayMode: .inline)
       
    }
        

    func creatGameView() -> some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 2), spacing: 0) {
            ForEach(gameVM.games) { game in
                NavigationLink(destination: game.destinationView(), label: {
                    VStack(spacing: 5) {
                        ZStack(alignment: .bottomTrailing) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 170, height: 140)
                                .background(Color(red: 1, green: 0.97, blue: 0.86))
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                               
                            AnyView(
                                
                            Image("\(game.image)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 179, height: 180)
                                .clipped()
//                                .applyGrayscale(game.isLocked)
                            )
                        }
                       
                        Text(game.name)
                          .font(Font.custom("SF Pro", size: 20))
                          .foregroundColor(.black)
                          .padding(.bottom)
                          .frame(width: 158, height: 24, alignment:
                          .topLeading)
                        Text(game.type)
                          .font(Font.custom("SF Pro", size: 16))
                          .foregroundColor(Color(red: 0.54, green:0.54,blue: 0.54))
                          .frame(width: 158, height: 24, alignment: .topLeading)
                        
                    }
                    .padding(.horizontal, 20.0)
                    .padding([.top, .trailing], 10.0)
                })
            }
        }
        .padding([.leading, .trailing], 10)
        .padding(.top, 40)
    }
    
}



//extension Image {
//    func applyGrayscale(_ isLocked: Bool) -> some View {
//        return self.colorMultiply(isLocked ? Color.gray : Color.white)
//    }
//}


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
