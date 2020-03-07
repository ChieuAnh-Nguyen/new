//
//  ViewController.swift
//  Flashcards
//
//  Created by Chewy nguyen on 2/20/20.
//  Copyright © 2020 Chieu Anh Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var card: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20
        card.layer.shadowRadius = 15
        card.layer.shadowOpacity = 5
        
        frontLabel.layer.cornerRadius = 20
        frontLabel.clipsToBounds = true
        backLabel.layer.cornerRadius = 20
        backLabel.clipsToBounds = true
//
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        print("Hello")
        frontLabel.isHidden = true
        backLabel.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        
    }
    func updateFlashcard(Question: String, Answer: String) {
        backLabel.text = Answer
        frontLabel.text = Question
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self


}
}
