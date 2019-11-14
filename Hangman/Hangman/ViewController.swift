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
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    

  override func viewDidLoad() {
    
    userInput.delegate = self
    
    let randomWord = allTheWords.randomElement() ?? ""
    var hiddenWord = ""
    var arrayWord = [Character]()
    
//    var image : UIImage = UIImage(named:"hang1")!
    
    imageView.image = UIImage(named: "hang1")

    for _ in randomWord {
        
        hiddenWord += " _ "
        
        arrayWord.append("_")
    }


    textView.text = hiddenWord
    
    
    let images = ["hang1","hang2","hang3", "hang4","hang5","hang6","hang7"]
    
   
    
    
    super.viewDidLoad()
    print(randomWord)
    print(hiddenWord)
    view.backgroundColor = .red
  }



    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userInput.resignFirstResponder()
        return true
    }
    
}

