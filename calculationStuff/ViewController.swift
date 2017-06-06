//
//  ViewController.swift
//  calculationStuff
//
//  Created by Jean Francois Antier on 6/5/17.
//  Copyright © 2017 Jean Francois Antier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDlay = display!.text!
            display!.text = textCurrentlyInDlay + digit
        } else {
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
        print ("\(digit) was called")
    }


}

