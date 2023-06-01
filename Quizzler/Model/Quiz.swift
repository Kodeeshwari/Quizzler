//
//  Quiz.swift
//  Quizzler
//
//  Created by Kodeeshwari Solanki on 2023-05-30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz{
    var question : String
    var answer : String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
