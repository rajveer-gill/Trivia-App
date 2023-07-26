//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Raj on 6/26/23.
//

import Foundation

struct ScoreViewModel{
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
