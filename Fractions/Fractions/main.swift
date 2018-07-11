//
//  main.swift
//  Fractions
//
//  Created by James on 11/07/18.
//  Copyright © 2018 james. All rights reserved.
//

import Foundation

// Define a new Fraction object
var u: Fraction

// Create and initialise a new object instance
u = Fraction.init()

// Show the state of the object's internal variables
print("u=\(u.num)/\(u.den)")

// Change the values of object's internal variables
u.num = 2
u.den = 3

// Show the state of the object's internal variables
print("u=\(u.num)/\(u.den)")

// Define and create a new instance of a Fraction object
var x: Fraction = Fraction()
x.num = -5
x.den = 1

print("x=\(x.num)/\(x.den)")

// Create and initialise a new Fraction object
var u2: Fraction

// Initialise the object
u2 = Fraction(num: 2,den: 3)

// Show the state of the object's internal variables
print("u2=\(u2.num)/\(u2.den)")

// Define and create a new instance of a Fraction object
var x2: Fraction = Fraction(num: -5,den: 1)

print("x2=\(x2.num)/\(x2.den)")
