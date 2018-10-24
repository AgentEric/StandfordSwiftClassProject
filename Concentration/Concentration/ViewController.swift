//
//  ViewController.swift
//  Concentration
//
//  Created by eric zhang on 2018/10/24.
//  Copyright © 2018年 eric zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Concentration(numberOfPairsOfCards: <#Int#>)
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻","🐙","👻","🐙"]
    
    @IBAction func touchCard(_ sender: UIButton) {

        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Button is not in the collection")
        }
    }
    
    /*这种架构是不好的架构
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🐙", on: sender)
    }
    */
    
    func flipCard(withEmoji emoji:String,on button: UIButton)  {

        if button.currentTitle == emoji{
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = UIColor.orange
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = UIColor.white
        }
    }
}

