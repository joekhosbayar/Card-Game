//
//  Deck.swift
//  WarGame
//
//  Created by Joe Khosbayar on 6/3/22.
//

import Foundation

struct Deck{
    
    var deck:Array<Card>
    var numCard:Int
    
    init(){
        deck = []
        numCard = 13
        for rank in 2...numCard{
            let img = "card" + String(rank)
            let card = Card(rank: rank, image:img)
            deck.append(card)
        }
    }
    
    
    func pickCard() -> Card{
        let random = Int.random(in: 2...numCard) - 2
        let picked = deck[random]
        return picked
    }
}




