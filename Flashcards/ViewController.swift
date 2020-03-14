//
//  ViewController.swift
//  Flashcards
//
//  Created by Chewy nguyen on 2/20/20.
//  Copyright © 2020 Chieu Anh Nguyen. All rights reserved.
//

import UIKit

struct Flashcard {
    var Question: String
    var Answer: String
}

class ViewController: UIViewController {

    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var card: UILabel!

    // Array to hold our flashcards
    var flashcards = [Flashcard] ()
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20
        card.layer.shadowRadius = 15
        card.layer.shadowOpacity = 5
        
        frontLabel.layer.cornerRadius = 20
        frontLabel.clipsToBounds = true
        backLabel.layer.cornerRadius = 20
        backLabel.clipsToBounds = true

        
    }

    @IBAction func didTapOnPrev(_ sender: Any) {
       currentIndex = currentIndex - 1

        updateLabels()
    updateNextPrevButtons()
        
    }
    
    @IBAction func didTapOnNext(_ sender: Any) {
        currentIndex = currentIndex + 1
        updateLabels()
        updateNextPrevButtons()
        
        }
    
    
    func updateLabels() {
        // get currrent flashcard
        let currentFlashcard = flashcards[currentIndex]
        // update labels
        frontLabel.text = currentFlashcard.Question
        backLabel.text = currentFlashcard.Answer
    }
    
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = true
        backLabel.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        
    }
    
    func updateFlashcard(question: String, answer: String) {
        let flashcard = Flashcard(Question: question, Answer: answer)
        backLabel.text = flashcard.Answer
        frontLabel.text = flashcard.Question
    frontLabel.isHidden = false
        flashcards.append(flashcard)
        
        //logging on console
        print("We now have \(flashcards.count) new flashcards")
        // update current index
        print("Our Current index is \(flashcards.count-1)")
        
        //update buttons
        updateNextPrevButtons()
        
        updateLabels()
    }
    func updateNextPrevButtons() {
        //disable next button if at end
        if currentIndex == flashcards.count - 1 {
            nextButton.isEnabled = false
        }else{
           nextButton.isEnabled = true
            
        };if currentIndex == 0 {
            prevButton.isEnabled = false
            }else {
            prevButton.isEnabled = true
            
        }
    }

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self


}
}
