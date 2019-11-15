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

    var guessWord = HangManBrain()
    
//    var assignedWord = HangManBrain()
   
    

    
    
    
    override func viewDidLoad() {
        userInput.delegate = self

        //dashes.joined(seperator: " ")
    
     
        //imageView.image = UIImage(named: "hang1")
        super.viewDidLoad()
        view.backgroundColor = .red
        
    }
    
    @IBAction func userRespone(_ sender: UIButton) {
        
    }
    
    
    
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepareForSegue")
        guard let viewController = segue.destination as? HangmanViewController else {
                   return
               }
        viewController.game = guessWord
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guessWord.userOneWord = userInput.text ?? ""
        textView.text = userInput.text
        userInput.text = ""
        return true
        
    }
    
    
       func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
       {
        let characterLimit = 12
        let newText = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
           let numberOfChars = newText.count
           
           return numberOfChars < characterLimit
    }
    

   
    
}

