//
//  EmojiMemoryGame.swift
//  MemorizeApp
//
//  Created by Joao Leal on 03/01/2024.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
