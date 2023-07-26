//
//  BottomTextView.swift
//  Code History
//
//  Created by Raj on 6/22/23.
//

import SwiftUI

struct BottomTextView: View {//sets structure for text at the bottom of the screen if the user needs to go to the next question, restart the game, etc.
    let str: String
    
    var body: some View {
        HStack{
            Spacer()
            Text(str).font(.body).padding()
            Spacer()
        }.background(GameColor.accentColor)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "hi")
    }
}
