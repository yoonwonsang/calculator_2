//
//  ViewController.swift
//  calculator_2
//
//  Created by yoonwonsang on 2015. 3. 15..
//  Copyright (c) 2015년 yoonwonsang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else{
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        
    }
    var operandStack: Array<Double> = Array<Double>()
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        println("operandStack = \(operandStack)")
    }
    
    var displayValue: Double {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
    }
        set{
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
}