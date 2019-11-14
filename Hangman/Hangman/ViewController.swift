//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textView: UILabel!
    
    
    @IBOutlet weak var userInput: UITextField!
    
    

  override func viewDidLoad() {
    
    userInput.delegate = self
    
    let randomWord = allTheWords.randomElement() ?? ""
    var hiddenWord = ""
    var arrayWord = [Character]()
    

    for _ in randomWord {
        
        hiddenWord += " _ "
        
        arrayWord.append("_")
    }


    textView.text = hiddenWord
    
    super.viewDidLoad()
    print(randomWord)
    print(hiddenWord)
    view.backgroundColor = .red
  }

    
}

