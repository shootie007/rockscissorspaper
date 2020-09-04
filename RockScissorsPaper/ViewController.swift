//
//  ViewController.swift
//  RockScissorsPaper
//
//  Created by 多田秀人 on 2020/09/04.
//  Copyright © 2020 多田秀人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        // create randint 0 to 2(less than 3)
//        answerNumber = Int.random(in: 0..<3)
        
        // temporary var
        var newAnswerNumber = 0
        
        // repeat generate randint while prevnum==newnum
        repeat {
            newAnswerNumber = Int.random(in: 0..<3)
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            
            // Rock
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
        } else if answerNumber == 1 {
            
            // Scissors
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
        } else if answerNumber == 2 {
            
            // Paper
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
        }
    }
}

