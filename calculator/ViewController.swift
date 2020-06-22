//
//  ViewController.swift
//  calculator
//
//  Created by ahmed kamel on 10/28/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var deceimal: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var modulus: UIButton!
    @IBOutlet weak var sign: UIButton!
    @IBOutlet weak var Ac: UIButton!
    @IBOutlet weak var screen: UILabel!
    
    var Raduis: Int = 40
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        deceimal.layer.cornerRadius = CGFloat(Raduis)
        equal.layer.cornerRadius = CGFloat(Raduis)
        one.layer.cornerRadius = CGFloat(Raduis)
        two.layer.cornerRadius = CGFloat(Raduis)
        three.layer.cornerRadius = CGFloat(Raduis)
        plus.layer.cornerRadius = CGFloat(Raduis)
        four.layer.cornerRadius = CGFloat(Raduis)
        five.layer.cornerRadius = CGFloat(Raduis)
        six.layer.cornerRadius = CGFloat(Raduis)
        seven.layer.cornerRadius = CGFloat(Raduis)
        eight.layer.cornerRadius = CGFloat(Raduis)
        nine.layer.cornerRadius = CGFloat(Raduis)
        minus.layer.cornerRadius = CGFloat(Raduis)
        divide.layer.cornerRadius = CGFloat(Raduis)
        multiply.layer.cornerRadius = CGFloat(Raduis)
        modulus.layer.cornerRadius = CGFloat(Raduis)
        sign.layer.cornerRadius = CGFloat(Raduis)
        Ac.layer.cornerRadius = CGFloat(Raduis)
        zero.layer.cornerRadius = 30
        
    }
    var input: Int = 0
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var result: Int = 0
    var count: Int = 0
    var operation: Character = " "
    var firstOrSecond: Bool = true
    
    func appendDigit (digit: Int){
        if count < 5 {
        input = input  * 10 + digit
        if input != 0 {
           count += 1
        }
        if firstOrSecond {
              firstNumber = input
              screen.text = String(firstNumber)
        }else{
              secondNumber = input
              screen.text = String(firstNumber) + " " + String(operation) + " " + String(secondNumber)
        }
    }
    }
    @IBAction func zeroClicked(_ sender: UIButton) {
        appendDigit(digit: 0)
    }
    @IBAction func oneClicked(_ sender: UIButton) {
        appendDigit(digit: 1)
    }
    @IBAction func twoClicked(_ sender: UIButton) {
        appendDigit(digit: 2)
    }
    @IBAction func threeClicked(_ sender: UIButton) {
        appendDigit(digit: 3)
    }
    @IBAction func fourClicked(_ sender: UIButton) {
        appendDigit(digit: 4)
    }
    @IBAction func fiveClicked(_ sender: UIButton) {
        appendDigit(digit: 5)
    }
    @IBAction func sixClicked(_ sender: UIButton) {
        appendDigit(digit: 6)
    }
    @IBAction func sevenClicked(_ sender: UIButton) {
        appendDigit(digit: 7)
    }
    @IBAction func eightClicked(_ sender: UIButton) {
        appendDigit(digit: 8)
    }
    @IBAction func nineClicked(_ sender: UIButton) {
        appendDigit(digit: 9)
    }
    @IBAction func plusClicked(_ sender: UIButton) {
        operation = "+"
        screen.text = String(input) + " + "
        input = 0
        firstOrSecond = false
    }
    @IBAction func minusClicked(_ sender: UIButton) {
        operation = "-"
        screen.text = String(input) + " - "
        input = 0
        firstOrSecond = false
    }
    @IBAction func multiplyClicked(_ sender: UIButton) {
        operation = "*"
        screen.text = String(input) + " * "
        input = 0
        firstOrSecond = false
    }
    @IBAction func divideClicked(_ sender: UIButton) {
        operation = "/"
        screen.text = String(input) + " / "
        input = 0
        firstOrSecond = false
    }
    
    
    @IBAction func modulus(_ sender: UIButton) {
        operation = "%"
        screen.text = String(input) + " % "
        input = 0
        firstOrSecond = false
    }
    
    
    @IBAction func equalClicked(_ sender: UIButton) {
        switch operation {
        case "+" :
            result = firstNumber + secondNumber
        case "-" :
            result = firstNumber - secondNumber
        case "/" :
            result = firstNumber / secondNumber
        case "*" :
            result = firstNumber * secondNumber
        case "%" :
            result = firstNumber % secondNumber
        default:
            screen.text = ""
        }
        screen.text = String(firstNumber) + " " + String(operation) + " " + String(secondNumber) + " = "+String(result)
        count = 0
        firstOrSecond = true
        input = 0
        firstNumber = 0
        secondNumber = 0
    }
    
    
    @IBAction func acClicked(_ sender: UIButton) {
         screen.text = ""
         count = 0
         firstOrSecond = true
         input = 0
         firstNumber = 0
         secondNumber = 0
         operation = " "
         result = 0
    }
    
}

