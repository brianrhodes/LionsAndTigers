//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Lynx on 6/23/16.
//  Copyright © 2016 Lynx. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff() {
        print("Tiger: Chuff Chuff")
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int) {
        for _ in 0 ..< numberOfTimes {
            chuff()
        }
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int, isLoud: Bool) {
        for _ in 0 ..< numberOfTimes {
            if isLoud {
                self.chuff()
            } else {
                print("Tiger: purr")
            }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge: Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(3))
        var randomFact:String = ""
        
        switch(randomNumber) {
        case 0:
            randomFact = "The Tiger is the biggest species in the cat family"
        case 1:
            randomFact = "Tigers can reach a length of 3.3 meters"
        case 2:
        default:
            randomFact = "A group of tigers is known as an 'Ambush' or 'Streak'"
        }
        
        return randomFact
    }
}