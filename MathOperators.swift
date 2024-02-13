//
//  HelloWorld.swift
//
//  Created by Tamer Zreg
//  Created on 2024-02-08
//  Version 1.0
//  Copyright (c) Tamer Zreg. All rights reserved.
//
//  This Program is a calculator that includes 6 Different Operations.

// Foundation
import Foundation

// Display Message on program functionality
print("This Program is a calculator that includes 6 Different Operations.")
// Asks user what their 2 numbers are.
print("Please your First and Second Number in order (1-2):")

// Checks To See if User inputs numbers in order (1-2).
if let FirstNumString = readLine(), let SecondNumString = readLine(){
    // Tries casting String to a Float
    if let FirstNum = Float(FirstNumString), let SecondNum = Float(SecondNumString) {
        // Asks user what operation they would like to preform.
        print("What Operation would you like to do? (+, -, *, /, ^, sqrt)")
        // Checks to See if User inputs the preferred operation.
        if let Operation = readLine() {
            // Switch Statement to check which operation the user wants to complete.
            switch (Operation){
                // Addition
                case "+":
                    let Sum = FirstNum + SecondNum
                    // Output Sum.
                    print("Your Sum is \(Sum)")
                // Subtraction
                case "-":
                    let Difference = FirstNum - SecondNum
                    // Output Difference.
                    print("Your Difference is \(Difference)")
                // Multiplication
                case "*":
                    let Product = FirstNum * SecondNum
                    // Output Product.
                    print("Your Product is \(Product)")
                // Division
                case "/":
                    if SecondNum != 0 {
                        let Remainder = FirstNum / SecondNum
                        // Output Remainder
                        print("Your Remainder is \(Remainder)")
                    } else {
                        print("Cannot divide by zero")
                    }
                // Exponential
                case "^":
                    let Power = pow(Double(FirstNum), Double(SecondNum))
                    // Output Power
                    print("Your Result of Power is \(Power)")
                // Square Root
                case "sqrt":
                    if FirstNum >= 0 {
                        let SquareRoot1 = sqrt(Double(FirstNum))
                        // Output Square Root of First Number
                        print("Square root of \(FirstNum) is \(SquareRoot1)")
                        let SquareRoot2 = sqrt(Double(SecondNum))
                        // Output Square Root of Second Number
                        print("Square root of \(SecondNum) is \(SquareRoot2)")

                    } else {
                        // If user inputs a negative number
                        print("Cannot calculate square root of a negative number")
                    }
                // If Operation is not one of the cases
                default:
                    // Output
                    print("Invalid operator")
            }
        // If No Input was provided
        } else {
            // Output
            print("No input provided.")
        }
    // If a string was inputted
    } else {
        print("Invalid input. Please enter a valid number.")
    }
  // If No Input was provided
} else {
    print("No input provided.")
}