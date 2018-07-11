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
    
    /**
        Default initialiser
     
        Initialise fraction to zero
    */
    convenience init() {
        self.init(num: 0, den: 1)
    }
    
    /**
        Designated initialiser
     
    */
    init(num : Int, den : Int) {
        
        // Check the denominator...
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }
    
    /**
        Convenience initialiser
     
    */
    convenience init(num : Int) {
        self.init(num: num, den: 1)
    }
    
}
