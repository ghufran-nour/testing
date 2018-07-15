//
//  Question.swift
//  Quizzler
//
//  Created by Ghufran nour  on 28/10/1439 AH.
//  Copyright © 1439 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}
