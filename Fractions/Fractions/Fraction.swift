//
//  Fraction.swift
//  Fractions
//
//  Represent a number as a fraction of two integers
//
//  Created by James on 11/07/18.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

class Fraction {
    
    var num: Int //numerator
    var den: Int //demonominator
    
    //default initialiser
    init() {
        self.num = 0 //initialise fraction to zero
        self.den = 1
    }
    
    //designated initialiser
    init(num : Int, den : Int) {
        
        // Check the denominator...
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }
    
}
