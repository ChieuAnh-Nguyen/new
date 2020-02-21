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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        print("Hello")
        frontLabel.isHidden = true
        backLabel.isHidden = false
        backLabel.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    
}

