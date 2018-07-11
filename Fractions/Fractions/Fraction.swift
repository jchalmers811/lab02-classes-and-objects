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
    
    
    
    // METHODS
    
    /**
     Adds a fraction to self.
     
     - parameter f: Fraction to add to self
     
     - returns: Fraction The result of adding f to self.
     */
    func add(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Subtracts fraction from self.
     
     - parameter f: Fraction to subtract from self
     
     - returns: Fraction The result of subtracting f from self.
     */
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Multiplies self by a fraction.
     
     - parameter f: Fraction to multiply self by
     
     - returns: Fraction The result of multiplying self by f.
     */
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    /**
     Divides self by a fraction.
     
     - parameter f: Fraction to divide self by
     
     - returns: Fraction The result of dividing self by f.
     */
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    /**
     Add a fraction to fraction.
     
     - parameter f1: Fraction to add to
     - parameter f2: Fraction to be added
     
     - returns: The result of f1 + f2.
     */
    static func add(_ f1: Fraction, to f2: Fraction) -> Fraction {
        return Fraction(num: f1.num*f2.den + f1.den*f2.num,
                        den: f1.den*f2.den)
    }
    
    /**
     Subtract a fraction from fraction.
     
     - parameter f1: Fraction to subtract
     - parameter f2: Fraction to subtract from
     
     - returns: The result of f2 - f1.
     */
    static func subtract(_ f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    
    /**
     Multiply a fraction by fraction.
     
     - parameter f1: Fraction to multiply
     - parameter f2: Fraction to multiply by
     
     - returns: The result of f1*f2.
     */
    static func multiply(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     Divide a fraction by fraction.
     
     - parameter f1: Fraction to divide
     - parameter f2: Fraction to divide by
     
     - returns: The result of f1/f2.
     */
    static func divide(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
    /**
     Adds an integer to self.
     
     - parameter x: Integer to add to self
     
     - returns: Fraction The result of adding x to self.
     */
    func add(_ x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    
    /**
     Subtracts an integer from self.
     
     - parameter x: Integer to subtract from self
     
     - returns: Fraction The result of subtracting x from self.
     */
    func subtract(_ x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    
    /**
     Multiplies self by an integer.
     
     - parameter x: Integer to multiply self by
     
     - returns: Fraction The result of multiplying self by x.
     */
    func multiply(_ x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }
    
    /**
     Divides self by an integer.
     
     - parameter x: Integer to divide self by
     
     - returns: Fraction The result of dividing self by x.
     */
    func divide(_ x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
    
}

/**
 + operator between two Fractions
 */
func +(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.add(f2)
}

/**
 - operator between two Fractions
 */
func -(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.subtract(f2)
}

/**
 * operator between two Fractions
 */
func *(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.multiply(f2)
}

/**
 / operator between two Fractions
 */

func /(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.divide(f2)
}
