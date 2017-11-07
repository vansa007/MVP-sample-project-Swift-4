//
//  Counter.swift
//  MVP xd
//
//  Created by Vansa Pha on 11/7/17.
//  Copyright © 2017 Vansa Pha. All rights reserved.
//

import Foundation

class Counter {
    var baseCount: Int
    
    init() {
        baseCount = 0
    }
    
    func onDown() {
        baseCount -= 1
    }
    
    func onUp() {
        baseCount += 1
    }
}
