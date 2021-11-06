//
//  Game.swift
//  Bullseye SwiftUI
//
//  Created by Ostrie on 8/7/21.
//

import Foundation


struct Game {
    
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round : Int = 1
    
    func points(sliderValue: Int) -> Int {
        let difference: Int = abs(sliderValue - self.target)
        let bonus: Int
        
        switch difference {
        case 0:
            bonus = 100
        case 1, 2:
            bonus = 50
        default:
            bonus = 0
        }
        let awardedPoints: Int = 100 - difference + bonus
        return awardedPoints
        
    }
    
    mutating func startNewRound(points: Int) {
        // self is optional for the next 3 lines
        self.round += 1
        self.score += points
        self.target = Int.random(in: 1...100)
        
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
}
