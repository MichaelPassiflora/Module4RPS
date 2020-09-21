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
        case computer = "Computer lost!"
        case tie = "Tie!"
    }
    
    
    let guesses:[Guess] = [.rock, .paper, .scissor]
    
    @IBAction func userGuessed(_ sender: UIButton) {
       let computerGuess = generateComputerGuess()
        
        let tappedButton = sender.tag
        switch tappedButton  {
        case 1:
            winner.text = (determineWinner(user: .rock, computer: computerGuess)).rawValue
        case 2:
            winner.text = (determineWinner(user: .paper, computer: computerGuess)).rawValue
        case 3:
        winner.text = (determineWinner(user: .scissor, computer: computerGuess)).rawValue
        default:
            print("unknown")
        }
    }
    func generateComputerGuess() -> Guess {
        return guesses.randomElement()!
    }
    
    func determineWinner(user: Guess, computer: Guess) -> Winner{
        userGuess.text = "You chose: \(user.rawValue)"
        
        computerGuess.text = "Computer chose: \(computer.rawValue)"

        switch user{
            
        case .rock:
            if computer == .paper{
                return .user
            } else if computer == .scissor {
                return .computer
            } else {
                return .tie
            }
        case .paper:
            if computer == .scissor{
                           return .user
                       } else if computer == .rock {
                           return .computer
                       } else {
                           return .tie
                       }
        case .scissor:
            if computer == .rock{
                           return .user
                       } else if computer == .paper {
                           return .computer
                       } else {
                           return .tie
                       }
        }
        
    }
    
}

