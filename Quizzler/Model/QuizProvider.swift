//
//  QuizProvider.swift
//  Quizzler
//
//  Created by Kodeeshwari Solanki on 2023-05-30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
struct QuizProvider{
    let quiz = [
        Quiz(q: "A slug's blood is green.", a: "True"),
        Quiz(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Quiz(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Quiz(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Quiz(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Quiz(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Quiz(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Quiz(q: "Google was originally called 'Backrub'.", a: "True"),
        Quiz(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Quiz(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Quiz(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Quiz(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String{
        return quiz[questionNumber].question
    }
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool{
        let rightAnswer = quiz[questionNumber].answer
        if userAnswer == rightAnswer{
            score += 1
            return true
        }
        else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getProgress() -> Float {
        var progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    func getQuestionCount() -> Int{
        return quiz.count
    }
    
    func getScore() -> Int{
        return score
    }
    
}
