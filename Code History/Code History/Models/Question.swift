//
//  Question.swift
//  Code History
//
//  Created by Raj on 6/14/23.
//

import Foundation

struct Question: Hashable{
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [//holds info for all the questions
        Question(questionText: "What country was an Axis power in World War 2?",
                 possibleAnswers: [
                    "Canada",
                    "Vietnam",
                    "China",
                    "Italy"
                 ], correctAnswerIndex: 3),
        Question(questionText: "What shape is used for stop signs?",
                 possibleAnswers: [
                    "Rectangle",
                    "Circle",
                    "Octagon",
                    "Triange"
                 ], correctAnswerIndex: 2),
        Question(questionText: "What is the name of the biggest technology company in South Korea?",
                 possibleAnswers: [
                    "Samsung",
                    "Apple",
                    "Microsoft",
                    "Google"
                 ], correctAnswerIndex: 0),
        Question(questionText: "Which animal can be seen on the Porsche logo?",
                 possibleAnswers: [
                    "Dog",
                    "Orca",
                    "Horse",
                    "Lion"
                 ], correctAnswerIndex: 2),
        Question(questionText: "Who was the first female pilot to fly solo across the Atlantic?",
                 possibleAnswers: [
                    "Taylor Swift",
                    "Amelia Earhart",
                    "Doris Burke",
                    "Simone Biles"
                 ], correctAnswerIndex: 1),
        Question(questionText: "What year was the first iPhone released?",
                 possibleAnswers: [
                    "1999",
                    "2003",
                    "2012",
                    "2007"
                 ], correctAnswerIndex: 3),
        Question(questionText: "What email service is owned by Microsoft?",
                 possibleAnswers: [
                    "Hotmail",
                    "Gmail",
                    "Yahoo! mail",
                    "Outlook"
                 ], correctAnswerIndex: 0),
        Question(questionText: "Which planet has the most gravity?",
                 possibleAnswers: [
                    "Earth",
                    "Jupiter",
                    "Mars",
                    "Saturn"
                 ], correctAnswerIndex: 1),
        Question(questionText: "What is the name of Batman's Butler?",
                 possibleAnswers: [
                    "Bruce",
                    "Damian",
                    "John",
                    "Alfred"
                 ], correctAnswerIndex: 3),
        Question(questionText: "Who haas the most 3 pointers made in NBA history?",
                 possibleAnswers: [
                    "Ray Allen",
                    "Steph Curry",
                    "Lebron James",
                    "Michael Jordan"
                 ], correctAnswerIndex: 1)
    ]
}




