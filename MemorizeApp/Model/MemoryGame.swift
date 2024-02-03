//
//  MemorizeGame.swift
//  MemorizeApp
//
//  Created by Joao Leal on 03/01/2024.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
   
    init(numberOfPairsOfCards: Int) {
        cards = []
        
        for _ in 0..<numberOfPairsOfCards {
            cards.append(Card(content: <#T##CardContent#>))
            cards.append(Card(content: <#T##CardContent#>))
        }
    }
    
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        
    }
}
