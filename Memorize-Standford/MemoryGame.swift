//
//  MemoryGame.swift
//  Memorize-Standford
//
//  Created by MKS on 20/09/20.
//  Copyright © 2020 MKS. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    func choose(card:Card)  {
        print("card choosen: \(card)")
    }
    
    init(numberOfPairsOfCards:Int, cardContenFactoy: (Int) -> CardContent) {
        cards =  Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContenFactoy(pairIndex)
            cards.append(Card( content: content,id:pairIndex*2))
            cards.append(Card( content: content,id:pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id:Int
        
    }
    
}
 
