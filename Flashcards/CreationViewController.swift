//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Chewy nguyen on 3/6/20.
//  Copyright © 2020 Chieu Anh Nguyen. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    var flashcardsController: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
     dismiss(animated: true)
        
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
    
        flashcardsController.updateFlashcard(Question: questionText! , Answer: answerText!)
  
        
    }
    

}
