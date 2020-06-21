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
    
    var Number: Int = 0
    var count: Int = 0
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    func appendDigit (digit: Int){
        if count < 5 {
        count += 1
        Number = Number  * 10 + digit
        screen.text = String(Number)
        }
    }
    @IBAction func zeroClicked(_ sender: UIButton) {
        Number = Number  * 10
        screen.text = String(Number)
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
    
}

