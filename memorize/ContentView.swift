//
//  ContentView.swift
//  memorize
//
//  Created by Uriel on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
<<<<<<< HEAD
          CardView(isFaceup: true)
          CardView()
          CardView()
          CardView()
          CardView()
        }
     
       
=======
            CardView(content:"🦜",isFaceup: false)
            CardView(content: "🛡️")
            CardView(content:"🏺",isFaceup: true)
            CardView(content:"😎",isFaceup: true)
        }
>>>>>>> 8abaa07 (Initial Commit)
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
<<<<<<< HEAD
    var isFaceup: Bool = false
    var body: some View {
        ZStack (content: {
            if isFaceup{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                        Text("🦜").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
           
        })
=======
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
        
>>>>>>> 8abaa07 (Initial Commit)
    }
}
