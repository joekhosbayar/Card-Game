//
//  ContentView.swift
//  WarGame
//
//  Created by Joe Khosbayar on 6/3/22.
//

import SwiftUI

let deck = Deck() //creating deck instance
struct ContentView: View { //struct, following view protocol

    @State var playerCard = deck.pickCard() //method of deck class
    @State var cpuCard = deck.pickCard()

    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View { //computed property
        
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard.image)
                    Spacer()
                    Image(cpuCard.image)
                    Spacer()
                }
                Spacer()
                
                Button{
                    print("Pressed")
                    //do stuff
                    dealHandler()
                }label: {
                    Image("dealbutton")
                }
               
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
    
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                
                Spacer()
                
            }
        }
    }
    func dealHandler(){
        if playerCard.rank < cpuCard.rank{
            self.cpuScore += 1
        }else if playerCard.rank > cpuCard.rank{
            self.playerScore += 1
        }else{
            print("TIE")
        }
        self.playerCard = deck.pickCard()
        self.cpuCard = deck.pickCard() //picking new cards
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
