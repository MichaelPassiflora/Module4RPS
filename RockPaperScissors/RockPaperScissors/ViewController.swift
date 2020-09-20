//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Michael Bravo on 9/20/20.
//  Copyright © 2020 Michael Bravo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userGuess: UILabel!


    @IBOutlet weak var computerGuess: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    enum Guess {
        case rock = "Rock"
        case paper = "Paper"
        case scissor = "Scissor"
        
    }
    
    enum Winner: String{
        case user = "You Won!"
        case computer = "You lost"
    }
    
    
    let guesses:[Guess] = [.rock, .paper, .scissor]
    
    @IBAction func userGuessed(_ sender: UIButton) {
        let tappedButton = sender.tag
        switch tappedButton  {
        case 1:
            break
        case 2:
            break
        case 3:
        default:
            print("unknown")
        }
    }
    func generateComputerGuess() -> Guess {
        return guesses.randomElement()!
    }
    
    func determineWinner(user: Guess, computer: Guess) -> Winner{
       
        return .user
    }
    
}

