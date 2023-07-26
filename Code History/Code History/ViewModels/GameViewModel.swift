//
//  GameViewModel.swift
//  Code History
//
//  Created by Raj on 6/23/23.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject{
    @Published private var game = Game() //gets info from Game file
    
    var currentQuestion: Question{//keeps track of current question
        game.currentQuestion
    }
    
    var correctness: Double{//calculates percentage of how many questions the user got right
        return Double(game.guessCount.correct/game.numberOfQuestions)
    }
    
    var questionProgressText: String{//shows user the question progress throughout the trivia
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var correctGuesses: Int{//keeps track of how many questions the user gets correct
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int{//keeps track of how many questions the user gets wrong
        game.guessCount.incorrect
    }
    
    var guessWasMade: Bool{//checks if the user makes a guess or not
        if let _ = game.guesses[currentQuestion]{
            return true
        }
        else{
            return false
        }
    }
    
    var isOver: Bool = false //checks if game is over
    
    var gameIsOver: Bool{
        game.isOver
    }
    
    func makeGuess(atIndex index: Int){//checks what answer the user selects
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen(){//updates screen based on user progress
        game.updateGameStatus()
        if game.isOver{
            isOver = true
        }
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color{//this function determines the background color of question answers based on the user's choice
        if let guessedIndex = game.guesses[currentQuestion]{
            if guessedIndex != optionIndex{//checks if the button was picked or hte user chose another button, so the button background would stay as main color if another button was picked
                return GameColor.mainColor
            }
            else if guessedIndex == currentQuestion.correctAnswerIndex{
                return GameColor.correctGuess
            }
            else{
                return GameColor.incorrectGuess
            }
        }
        else{
            return GameColor.mainColor
        }
    }
}


