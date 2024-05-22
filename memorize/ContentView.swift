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
          CardView(isFaceup: true)
          CardView()
          CardView()
          CardView()
          CardView()
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
    }
}
