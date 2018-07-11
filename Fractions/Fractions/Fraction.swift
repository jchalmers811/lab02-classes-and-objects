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
     Converts fraction to a Float value
     
     - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    
    /**
     Converts object to a string description
     
     - returns: String String representation of a fraction
     */
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    
    
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
