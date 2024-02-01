//
//  SessionView.swift
//  BeeAttention
//
//  Created by Haneen Rida Shagroon on 19/07/1445 AH.
//

import SwiftUI

struct SessionView: View {
    @ObservedObject var timerViewModel: TimerViewModel
    let wordList = ["apple", "banana", "orange", "grape", "melon"]
    @State private var currentWord = ""
    @State private var letterPositions: [CGPoint] = []
    @State private var guessedWord = ""
    @State private var showAlert = false
    @State private var score = 0
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var isTimeUp = false
    var body: some View {
        ZStack{
            
            Image("Wallpaper") // Replace with your image name
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack (){
                
                HStack (spacing:5){
                    
                    Image(systemName: "star.circle")
                        .padding([.leading], 15) // Adjust the leading padding value as needed
                    
                    Text("\(score)")
                    
                    Spacer()
                    
                    Text("Level 1")
                        .font(Font.custom("SF Pro", size: 20))
                        .foregroundColor(.black)
                        .padding([.leading, .trailing], 90)
                    //                  Spacer()
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 50, height: 50)
                            .background(Color(red: 0.99, green: 0.78, blue: 0))
                            .cornerRadius(30)
                            .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                        Image(systemName: "lightbulb.max.fill")
                            .padding(5)
                        
                    }
                    .padding(.trailing, 20)
                }
                
                
                CustomLinearProgressBar(timerViewModel: timerViewModel)
                    .frame(width: 360, height: 25)// here i can reduse the space between the timer and the board
                    .padding(.top, 20)
                    .padding(.leading,20)
            
                GeometryReader { geometry in
                    ZStack (alignment: .top) {
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 355, height: 370)
                            .background(Color(red: 1, green: 0.97, blue: 0.86))
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                            .padding(.top, 20)
                        ForEach(0..<currentWord.count, id: \.self) { index in
                            LettersView(lettersVM: LettersViewModel(letters: Letters(id: UUID(), letterName: String(currentWord[currentWord.index(currentWord.startIndex, offsetBy: index)]), letterImage: "")))
                                .position(letterPositions[index])
                                .animation(.easeInOut(duration: 1))
                                .clipped() // Ensure the letter is clipped within its container
                        }
                    }
                    
                    .onReceive(timer) { _ in
                        shuffleLetterPositions()
                        
                    }
                }
                
                TextField("Enter your guess", text: $guessedWord, onCommit: checkGuess)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 364, height: 45)
                    .background(Color(red: 1, green: 0.97, blue: 0.86))
                    .cornerRadius(15)
//                    .padding(.bottom, 150)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
//                            .inset(by: 1.5)
                            .stroke(Color(red: 0.99, green: 0.78, blue: 0), lineWidth:4)
                    )
                    .padding()
                    .padding(.bottom, 120)
                Button("Pass", action: newWord)
                    .padding()
                
                Spacer()
               
                
            }
            .padding(26.0)
        }
          .alert(isPresented: $showAlert) {
              Alert(title: Text("Result"), message: Text("Your guess is \(guessedWord == currentWord ? "correct!" : "incorrect!")"),
                    dismissButton: .default(Text("OK")) {
                  if guessedWord == currentWord {
                      score += 1
                  }
                  
                  newWord()
                  
              })
              
              
          }
          .onAppear(perform: newWord)
      }
      
      func newWord() {
          currentWord = wordList.randomElement() ?? ""
          letterPositions = generateRandomNonOverlappingPositions(count: currentWord.count, containerSize: CGSize(width:360, height: 350), letterSize: CGSize(width: 40, height: 40), letterSpacing: 30, edgeMargin:50)
          
          guessedWord = ""
      }
      
  
          func checkGuess() {
              showAlert = true
          }
    
    func shuffleLetterPositions() {
        letterPositions.shuffle()
    }
}
func generateRandomNonOverlappingPositions(count: Int, containerSize: CGSize, letterSize: CGSize, letterSpacing: CGFloat, edgeMargin: CGFloat) -> [CGPoint] {
    var positions: [CGPoint] = []

    for _ in 0..<count {
        var position: CGPoint

        // Generate a random position within the frame
        let x = CGFloat.random(in: edgeMargin...(containerSize.width - letterSize.width - edgeMargin))
        let y = CGFloat.random(in: edgeMargin...(containerSize.height - letterSize.height - edgeMargin))

        position = CGPoint(x: x, y: y)

        positions.append(position)
    }

    return positions
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let timerViewModel = TimerViewModel() // Create an instance of TimerViewModel
        return SessionView(timerViewModel: timerViewModel)
    }
}


//
//#Preview {
//    SessionView()
//}
