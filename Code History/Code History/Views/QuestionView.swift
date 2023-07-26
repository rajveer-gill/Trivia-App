//
//  QuestionView.swift
//  Code History
//
//  Created by Raj on 6/23/23.
//

import SwiftUI

struct QuestionView: View {//builds the view for each trivia question
    
    @EnvironmentObject var viewModel: GameViewModel //helps the code interact with the model view
    let question: Question
    
    var body: some View {
        VStack{
            Text(question.questionText).font(.largeTitle).bold().multilineTextAlignment(.leading).padding() //outputts the question to the screen
            Spacer()
            VStack{
                ForEach(0..<question.possibleAnswers.count){answerIndex in //the loop creates mutiple buttons which contains different answers
                    Button(action: { //button contains answers based on list from the Question file
                        print("Tapped \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex]).background(viewModel.color(forOptionIndex: answerIndex))
                    })
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade{ //checks if the question has been answered
                if viewModel.isOver{ //checks if the game is over
                    NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), label: {
                        BottomTextView(str: "Next")//transitions the app to the end screen
                    })
                }
                else{
                    Button(action: {
                        viewModel.displayNextScreen() //transitions app to next question screen
                    }, label: {
                        BottomTextView(str: "Next")
                    })
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
