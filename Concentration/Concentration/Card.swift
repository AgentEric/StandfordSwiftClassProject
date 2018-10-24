//
//  Card.swift
//  Concentration
//
//  Created by eric zhang on 2018/10/24.
//  Copyright © 2018年 eric zhang. All rights reserved.
//

import Foundation


/// 结构体和类的区别
struct Card {
    var isFacedUp = false
    var isMatched = false
    var identifier: Int
    
    //静态方法
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
