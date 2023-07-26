//
//  ScoreView.swift
//  Code History
//
//  Created by Raj on 6/24/23.
//

import SwiftUI

struct ScoreView: View {
    //@EnvironmentObject var viewModel: GameViewModel
    let viewModel: ScoreViewModel//helps file interact with view model
    
    var body: some View {
        ZStack{
            GameColor.mainColor.ignoresSafeArea()//sets background color for the view
            VStack{//shows final info for user after answering all the questions
                Spacer()
                Text("Final Score:").font(.body)
                Text("\(viewModel.percentage)%").font(.system(size: 50)).bold().padding()
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses)✅")
                    Text("\(viewModel.incorrectGuesses)❌")
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {BottomTextView(str: "Re-Take Quiz")})//allows user to retake the quiz
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 9, incorrectGuesses: 2))
    }
}
