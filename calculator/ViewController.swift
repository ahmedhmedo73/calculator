//
//  ViewController.swift
//  calculator
//
//  Created by ahmed kamel on 10/28/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets -
    
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
    @IBOutlet weak var fraction: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var modulus: UIButton!
    @IBOutlet weak var sign: UIButton!
    @IBOutlet weak var Ac: UIButton!
    @IBOutlet weak var screen: UILabel!
    //MARK: - Properties -
    
    var Raduis: CGFloat = 40.0
    var input: Int = 0
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var result: Int = 0
    var count: Int = 0
    var operation: Character = " "
    var firstOrSecond: Bool = true
    var checkDouble: Bool = false
    var checkDoubleFirstNumber: Bool = false
    var checkDoubleSecondNumber: Bool = false
    var doubleInput: Double = 0
    var doubleFirstNumber: Double = 0
    var doubleSecondNumber: Double = 0
    var checkEqual = false
    var checkOperation = false
    var checkFirst = false
    var checkSecond = false
    
    //MARK: - Life cycle -
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        screen.adjustsFontSizeToFitWidth = true
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Raduis = zero.frame.height / 2.0
        
        fraction.layer.cornerRadius = CGFloat(Raduis)
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
        zero.layer.cornerRadius = CGFloat(Raduis)
    }
    
    
    //MARK: - Actions -
    @IBAction func zeroClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 0)
        }else{
            appendDigit(digit: 0)
        }
    }
    @IBAction func oneClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 1)
        }else{
            appendDigit(digit: 1)
        }
    }
    @IBAction func twoClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 2)
        }else{
            appendDigit(digit: 2)
        }
    }
    @IBAction func threeClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 3)
        }else{
            appendDigit(digit: 3)
        }
    }
    @IBAction func fourClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 4)
        }else{
            appendDigit(digit: 4)
        }
    }
    @IBAction func fiveClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 5)
        }else{
            appendDigit(digit: 5)
        }
    }
    @IBAction func sixClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 6)
        }else{
            appendDigit(digit: 6)
        }
    }
    @IBAction func sevenClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 7)
        }else{
            appendDigit(digit: 7)
        }
    }
    @IBAction func eightClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 8)
        }else{
            appendDigit(digit: 8)
        }
    }
    @IBAction func nineClicked(_ sender: UIButton) {
        if checkDouble {
            appendDigitAfterPoint(digit: 9)
        }else{
            appendDigit(digit: 9)
        }
    }
    
    @IBAction func plusClicked(_ sender: UIButton) {
        if !checkOperation && checkFirst{
        operation = "+"
        if checkDouble {
            screen.text = String(doubleInput) + " + "
        }else{
            screen.text = String(firstNumber) + " + "
        }
        firstOrSecond = false
        count = 0
        }
        
    }
    @IBAction func minusClicked(_ sender: UIButton) {
        if !checkOperation && checkFirst{
        operation = "-"
        if checkDouble {
            screen.text = String(doubleInput) + " - "
        }else{
            screen.text = String(firstNumber) + " - "
        }
        firstOrSecond = false
        count = 0
        }
        
    }
    @IBAction func multiplyClicked(_ sender: UIButton) {
        if !checkOperation && checkFirst{
        operation = "*"
        if checkDouble {
            screen.text = String(doubleInput) + " * "
        }else{
            screen.text = String(firstNumber) + " * "
        }
        firstOrSecond = false
        count = 0
        }
    }
    @IBAction func divideClicked(_ sender: UIButton) {
        if !checkOperation && checkFirst{
        operation = "/"
        if checkDouble {
            screen.text = String(doubleInput) + " / "
        }else{
            screen.text = String(firstNumber) + " / "
        }
        firstOrSecond = false
        count = 0
        }
    }
    @IBAction func modulus(_ sender: UIButton) {
        if !checkOperation && checkFirst{
            operation = "%"
        if checkDouble {
            screen.text = String(doubleInput) + " % "
        }else{
            screen.text = String(firstNumber) + " % "
        }
        firstOrSecond = false
        count = 0
        }
    }
    @IBAction func signClicked(_ sender: UIButton) {
        if checkDoubleSecondNumber {
            doubleInput = doubleInput - 2 * doubleInput
            doubleSecondNumber = doubleInput
            if checkDoubleFirstNumber {
               screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(doubleSecondNumber)
            }else{
                   screen.text = String(firstNumber) + " " + String(operation) + " " + String(doubleSecondNumber)
            }
        }else if checkDoubleFirstNumber {
            doubleInput = doubleInput - 2 * doubleInput
            doubleFirstNumber = doubleInput
            screen.text = String(doubleFirstNumber)
        }
        else{
          if firstOrSecond {
              firstNumber = firstNumber - 2 * firstNumber
              screen.text = String(firstNumber)
          }else{
              secondNumber = secondNumber - 2 * secondNumber
              screen.text = String(firstNumber) + " " + String(operation) + " " + String(secondNumber)
          }
        }
    }
    
    @IBAction func fractionClicked(_ sender: UIButton) {
        checkDouble = true
        count = 2
        if firstOrSecond {
              doubleInput = Double(firstNumber)
              doubleFirstNumber = doubleInput
              screen.text = String(firstNumber) + "."
              checkDoubleFirstNumber = true
        }else{
            checkDoubleSecondNumber = true
            doubleInput = Double(secondNumber)
            if checkDoubleFirstNumber{
              doubleSecondNumber = doubleInput
              screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(secondNumber) + "."
        }else{
              doubleSecondNumber = doubleInput
              screen.text = String(firstNumber) + " " + String(operation) + " " + String(secondNumber) + "."
        }
        }
    }
    
    @IBAction func equalClicked(_ sender: UIButton) {
        if checkEqual || !checkOperation || !checkFirst || !checkSecond{
            return
        }
        checkEqual = true
        if checkDoubleFirstNumber && checkDouble {
            switch operation {
            case "+" :
                doubleInput = doubleFirstNumber + doubleSecondNumber
            case "-" :
                doubleInput = doubleFirstNumber - doubleSecondNumber
            case "/" :
                if doubleSecondNumber != 0{
                    doubleInput = doubleFirstNumber / doubleSecondNumber
                }
            case "*" :
                doubleInput = doubleFirstNumber * doubleSecondNumber
            default:
                screen.text = ""
            }
            if doubleSecondNumber == 0 && operation == "/" {
                screen.text = "can't divide by zero"
            }else if operation == "%"{
                screen.text = "can't modulus with float numbers"
            }else if doubleInput == 0{
                 screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(doubleSecondNumber) + " = 0"
            }
            else{
                doubleInput = Double(Int(doubleInput * pow( 10.0 , Double(count - 1)))) / pow( 10.0 , Double(count - 1))
                screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(doubleSecondNumber) + " = "+String(doubleInput)
            }
            
        }else if !checkDoubleFirstNumber && checkDouble {
            switch operation {
            case "+" :
                doubleInput = Double(firstNumber) + doubleSecondNumber
            case "-" :
                doubleInput = Double(firstNumber) - doubleSecondNumber
            case "/" :
                if doubleSecondNumber != 0{
                    doubleInput = Double(firstNumber) / doubleSecondNumber
                }
            case "*" :
                doubleInput = Double(firstNumber) * doubleSecondNumber
            default:
                screen.text = ""
            }
            if doubleSecondNumber == 0 && operation == "/" {
                screen.text = "can't divide by zero"
            }else if operation == "%"{
                screen.text = "can't modulus with float numbers"
            }else{
                doubleInput = Double(Int(doubleInput * pow( 10.0 , Double(count - 1)))) / pow( 10.0 , Double(count - 1))
                screen.text = String(firstNumber) + " " + String(operation) + " " + String(doubleSecondNumber) + " = "+String(doubleInput)
            }
        }else if checkDoubleFirstNumber && !checkDouble {
            switch operation {
            case "+" :
                doubleInput = doubleFirstNumber + Double(secondNumber)
            case "-" :
                doubleInput = doubleFirstNumber - Double(secondNumber)
            case "/" :
                if secondNumber != 0{
                    doubleInput = doubleFirstNumber / Double(secondNumber)
                }
            case "*" :
                doubleInput = doubleFirstNumber * Double(secondNumber)
            default:
                screen.text = ""
            }
            if secondNumber == 0 && operation == "/" {
                screen.text = "can't divide by zero"
            }else if operation == "%"{
                screen.text = "can't modulus with float numbers"
            }else{
                doubleInput = Double(Int(doubleInput * pow( 10.0 , Double(count - 1)))) / pow( 10.0 , Double(count - 1))
                screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(secondNumber) + " = "+String(doubleInput)
            }
        }
        else{
        switch operation {
        case "+" :
            result = firstNumber + secondNumber
        case "-" :
            result = firstNumber - secondNumber
        case "/" :
            if secondNumber != 0{
                result = firstNumber / secondNumber
            }else {
                
            }
        case "*" :
            result = firstNumber * secondNumber
        case "%" :
            result = firstNumber % secondNumber
        default:
            screen.text = ""
        }
        if secondNumber == 0 && operation == "/" {
            screen.text = "can't divide by zero"
        }else{
            screen.text = String(firstNumber) + " " + String(operation) + " " + String(secondNumber) + " = "+String(result)
        }
        }
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
         doubleInput = 0
         doubleFirstNumber = 0
         doubleSecondNumber = 0
         checkDouble = false
         checkEqual = false
         checkOperation = false
         checkSecond = false
         checkFirst = false
         checkDoubleFirstNumber = false
         checkDoubleSecondNumber = false
    }
    //MARK: - Appends Functions -
    func appendDigit (digit: Int){
        if firstNumber != 0 || secondNumber != 0 {
            count += 1
        }
        if count < 5 {
            if firstOrSecond {
                firstNumber = firstNumber * 10 + digit
                screen.text = String(firstNumber)
                checkFirst = true
            }else{
                checkDouble = false
                checkOperation = true
                secondNumber = secondNumber * 10 + digit
                if checkDoubleFirstNumber{
                    screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(secondNumber)
                    checkSecond = true
                }else{
                    screen.text = String(firstNumber) + " " + String(operation) + " " + String(secondNumber)
                    checkSecond = true
                }
            }
        }
    }
    func appendDigitAfterPoint (digit: Int){
        if count < 5 {
            doubleInput = doubleInput + ( Double(digit)  / pow( 10.0 , Double(count - 1)))
            doubleInput = Double(Int(doubleInput * pow( 10.0 , Double(count - 1)))) / pow( 10.0 , Double(count - 1))
            count += 1
        }
        if firstOrSecond {
            doubleFirstNumber = doubleInput
            screen.text = String(doubleFirstNumber)
        }else if checkDoubleFirstNumber{
            doubleSecondNumber = doubleInput
            screen.text = String(doubleFirstNumber) + " " + String(operation) + " " + String(doubleSecondNumber)
        }else{
            doubleSecondNumber = doubleInput
            screen.text = String(firstNumber) + " " + String(operation) + " " + String(doubleSecondNumber)
        }
    }
    
    
}

