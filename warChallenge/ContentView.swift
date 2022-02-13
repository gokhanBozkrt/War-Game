//
//  ContentView.swift
//  warChallenge
//
//  Created by Gokhan Bozkurt on 16.01.2022.
//

import SwiftUI

struct ContentView: View {
 //   var isGreen = true
 @State private  var playerCard = "card9"
@State private  var cpuCard = "card2"
@State private  var playerScore = 0
@State  private  var cpuScore = 0
    
    var body: some View {
        ZStack {
   /*    if isGreen {
                Color.green.ignoresSafeArea()
            } else {
                Color.gray.ignoresSafeArea()
    */
           Image("background")
            .resizable()
                .edgesIgnoringSafeArea(.all)
           
            VStack {
                Spacer()
                Image("logo")
               
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                Image(cpuCard)
                    Spacer()
                }
                Spacer()
               
                Button {
               
                  // genereta ramdom number 2..14
                    let playerRandNumber = Int.random(in: 2...14)
                    let cpuRandNumber = Int.random(in: 2...14)
                    
                    
                    // update the cards
                    playerCard = "card" + String(playerRandNumber)
                    cpuCard = "card" + String(cpuRandNumber)
               // update the scores
            
                    if playerRandNumber > cpuRandNumber {
                        playerScore += 1
                    } else if playerRandNumber < cpuRandNumber {
                               cpuScore += 1
                    } else {
                        playerScore = 0
                        cpuScore = 0
                    }
                    
                    
                    
                } label: {
                    Image("dealbutton")
                     /*
                      .resizable()
                      .frame(width: 150.0, height: 90.0)
                      .scaledToFit()
                      .padding()
                      */
                }
                Spacer()
                HStack {
                    Spacer()
                    
                    VStack(spacing:20) {
                        Text("Player")
                        Text(String(playerScore))
                        }.foregroundColor(Color.white)
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])

                    Spacer()

                        VStack(spacing:20) {
                            Text("CPU")
                           Text(String(cpuScore))
                               } .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                        .foregroundColor(Color.white)
                    Spacer()
                }
                Spacer()
            }
            
          
       
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
