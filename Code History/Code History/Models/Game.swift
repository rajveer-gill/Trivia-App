//
//  Game.swift
//  Code History
//
//  Created by Raj on 6/19/23.
//

import Foundation

struct Game{
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled() //shuffles questions from Question list
    
    var guessCount: (correct: Int, incorrect: Int){ //keeps track of how many incorrect and correct answers were chosen
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses{//goes through each element of guesses
            if (question.correctAnswerIndex == guessedIndex){//checks if the guessed index match the index of the correct answer
                count.correct += 1
            }
            else{
                count.incorrect += 1
            }
        }
        return count
    }
    
    var numberOfQuestions: Int{//keps track of how many questions there are
        return questions.count
    }
    
    var currentQuestion: Question{//keeps track of what question the user is on
        questions[currentQuestionIndex]
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int){//inputs user guess to guesses variable
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus(){//updates question and answers based on what question the user is on
        if currentQuestionIndex < (questions.count - 1){//checks if the the game reached the max questions in the system
            currentQuestionIndex += 1
        }
        else{
            isOver = true
        }
        
    }
}




