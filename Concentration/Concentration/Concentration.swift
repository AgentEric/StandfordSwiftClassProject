//
//  Concentration.swift
//  Concentration
//
//  Created by eric zhang on 2018/10/24.
//  Copyright © 2018年 eric zhang. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
    }
    init(numberOfPairsOfCards: Int) {
        
        //_的作用！
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card,card]
        }
        //TODO: Shuffle the cards
    }
}
