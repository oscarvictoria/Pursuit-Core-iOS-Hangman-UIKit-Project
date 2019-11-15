//
//  hangmanBrain .swift
//  Hangman
//
//  Created by Oscar Victoria Gonzalez  on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

class HangManBrain {
    var userOneWord = String()
    
    static func dashes(word: String) -> [String] {
        let dashes = Array(repeating: "_", count: word.count)
        return dashes
    }
    
    
}



