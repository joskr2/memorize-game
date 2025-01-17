//
//  ContentView.swift
//  memorize
//
//  Created by Josue on 19/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    var isFaceUp = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth:2)
                Text("🤖").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}


#Preview {
    ContentView()
}
