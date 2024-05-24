//
//  ContentView.swift
//  memorize
//
//  Created by Uriel on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🛸","👽","🧬","👾"]
    var body: some View {
        HStack{
            CardView(content: emojis[0],isFaceup: false)
            CardView(content: emojis[1])
            CardView(content: emojis[2],isFaceup: true)
            CardView(content:emojis[3],isFaceup: true)
        }
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {

    let content: String
    @State var isFaceup = false
    var body: some View {
        ZStack  {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceup{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }else{
                base.fill()
            }
            
        }.onTapGesture{
            isFaceup.toggle()
        }
        
    }
}
