//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Raj on 6/14/23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View{
        Text(choiceText).font(.body).bold().multilineTextAlignment(.center).padding().border(GameColor.accentColor, width: 4) //makes text with border. Helpful for making buttons
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
