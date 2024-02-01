//
//  GameLevels.swift
//  mindfitness
//
//  Created by Haneen Rida Shagroon on 06/07/1445 AH.
//

import SwiftUI

struct GameLevels: View {
    
    @State private var Level : [LevelModel] = LevelModel.LevelData
    @State private var c : [SessionModel] = SessionModel.SessionlData
    var body: some View {
      
        ScrollView(showsIndicators: false){
            
            
            VStack (alignment: .leading) {
                Text("Letters To Words !")
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
            
//
//            VStack {
//                
//                Text("Letters To Words ! ")
//                    .padding(.trailing , 200)
//                Divider()
//                    .frame(width: 280 , height: 1)
//                    .background(Color("mainColor"))
//                    .padding(.trailing , 70)
                    
                 
                HStack{
                    Image(systemName: "star.circle.fill")
                    Text("Score : ")
                     
                    Text("7687") // will be change to function-the result is based on functon
                       
                }
                .padding(.trailing ,220)
                .padding(.bottom , 70)
                .offset(y:30)
                ForEach(LevelModel.LevelData ){ item in
                    Button(action: {
                        
                    }, label: {
                        if item.sessions.totalwords == item.sessions.correctGussedword {
                            ZStack{
                            
                            Color("mainColor")
                                .frame(width: 322 , height: 113)
                                .cornerRadius(15)
                                .shadow(radius: 0 , x : 0 , y: 1)
                            
                            
                            HStack {
                                Spacer()
                                //levels
                                Text("\(item.name)")
                                    .font(Font.custom("SF Pro", size: 20))
                                Text("\(item.index)")
                                    .font(Font.custom("SF Pro", size: 20))
                                Spacer()
                                VStack{
                                    
                                    //result
                                    HStack{
                                        Image(systemName: item.timeImg)
                                        Text("\(item.time )" + "/" + "60s") //results
                                    }
                                    HStack{
                                        Image(systemName: item.checkImg)
                                        
                                        Text("\(item.sessions.correctGussedword)" + "/" + "\(item.sessions.totalwords)") //results
                                    }
                                }
                                Spacer()
                            }
                            
                        }//end zs
                    } // end if
                        else
                        {
                            ZStack{
                            
                            Color("secondaryColor")
                                .frame(width: 322 , height: 113)
                                
                                .cornerRadius(15)
                                .shadow(radius: 0 , x : 0 , y: 1)
                            
                            HStack {
                             Spacer()
                                //levels
                                Text("\(item.name)")
                                    .font(Font.custom("SF Pro", size: 20))
                                Text("\(item.index)")
                                    .font(Font.custom("SF Pro", size: 20))
                               Spacer()
                                Image (systemName: item.lockImg)
                                Spacer()
                            }
                            
                        }//end zs
                            
                            
                            
                        }
                    })//end button
                    
                }//end for each

                .foregroundColor(.black)
                .padding(10)
                
            }//end main vstack
        }//end scroll view
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
        Image("Wallpaper") // Replace with your image name
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all))
    }
}


#Preview {
    GameLevels()
}
