//
//  ContentView.swift
//  memorize
//
//  Created by Uriel on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🛸","👽","🧬","👾","🧨","😎","😲","⚽️"]
    
    let columns = [GridItem(.adaptive(minimum: 140))] /

    
    @State var cardCount: Int = 4
    var body: some View {
        VStack{
            ScrollView{
                card
            }
            
            Spacer()
            cardCountAdjusters
        }
    }
    
    var cardCountAdjusters : some View {
        HStack {
    
            cardRemover
            Spacer()
            cardAdd
           
        }
        .imageScale(.large)
        .font(.largeTitle)
        .padding()
    }

          
    var card : some View {
        LazyVGrid(columns:columns, spacing:20){
            ForEach(0..<cardCount,id: \.self){ index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
       
        .foregroundColor(.orange)
    }
    
    func cardCountAdjuster(by offset: Int, symbol:String) -> some View{
        Button(action:{
         cardCount += offset
        }, label:{
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count )
    }
    
    var cardRemover : some View {
       return cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
    }
    
    var cardAdd : some View {
        
        cardCountAdjuster(by: +1, symbol:"rectangle.stack.badge.plus.fill")
       
    }
}

#Preview {
    ContentView()
}

struct CardView: View {

    let content: String
    @State var isFaceup = true
    
    var body: some View {
        ZStack  {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            Group{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceup ? 1 : 0)
            base.fill().opacity(isFaceup ? 0 :1)
            
        }.onTapGesture{
            isFaceup.toggle()
        }
        
    }
}
