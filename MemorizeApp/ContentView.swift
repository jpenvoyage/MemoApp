//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Joao Leal on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let emojis: [String] = ["💊", "🧸", "🦠", "🎁", "🧨", "☎️", "🚀", "🏈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                
            }
          
        }
        .foregroundColor(.orange)
        .padding()
        
    }
}

struct CardView: View {
    @State private var isFaceUp: Bool = false
    let content: String
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
                
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}
