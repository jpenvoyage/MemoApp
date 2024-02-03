//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Joao Leal on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    @State private var cardCount: Int = 4
    let emojis: [String] = ["💊", "🧸", "🦠", "🎁", "🧨", "☎️", "🚀", "🏈"]
    
    var body: some View {
        
        ScrollView{
            cards
        }
        
        .padding()
    }
    
    var cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))] ) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
                
            }
            
        }
        .foregroundColor(.orange)
        
    }
}
struct CardView: View {
    @State private var isFaceUp: Bool = false
    let content: String
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            Group {
                
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1: 0)
            
            base.fill().opacity(isFaceUp ? 0 : 1)
            
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
