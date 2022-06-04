//
//  Card.swift
//  WarGame
//
//  Created by Joe Khosbayar on 6/3/22.
//

import Foundation

class Card{
    var rank:Int
    //let suit:String
    var image:String
    
    
    init(){
        self.rank = 2
        self.image = "logo2"
    }
    
    init(rank: Int, image: String){
        self.rank = rank
        self.image = image
    }
}



