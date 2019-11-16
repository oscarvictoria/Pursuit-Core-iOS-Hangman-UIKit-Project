//
//  HangmanViewController.swift
//  Hangman
//
//  Created by Oscar Victoria Gonzalez  on 11/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    

    @IBOutlet weak var newTextLabel: UILabel!

    
    @IBOutlet weak var userTwoGuess: UITextField!
    
    
    
    var game = HangManBrain()
    
//    var newText = String()
    
//    var instanceOfHangmanWord = HangManBrain.


    override func viewDidLoad() {
        super.viewDidLoad()
        userTwoGuess.delegate = self
        imageView.image = UIImage(named: "hang1")
        //newTextLabel.text = newText
        let dash = HangManBrain.dashes(word: game.userOneWord)
        newTextLabel.text = dash.joined(separator: " ")
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        userTwoGuess.text = ""
        return true
    }
    


}
