//
//  ViewController.swift
//  CAAAALC
//
//  Created by Гость on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonChangeResultLabel: UIStepper!
    @IBOutlet weak var buttons: UIStackView!
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonAC.layer.cornerRadius = 36
        
        
    }
    
    //нажатие на цифры
    @IBAction func inputNumber(_ sender: UIButton) {
        
        if operand.isEmpty {
            numberOne = numberOne +
            (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
        else
        {
            numverTwo = numverTwo +
            (sender.titleLabel?.text)!
            resultLabel.text = numverTwo
        }
    }
    
    //нажатие на клавиши + - / *
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    
    //сборс значений
    @IBAction func clearAction(_ sender: UIButton) {
        numverTwo = ""
        numberOne = ""
        operand = ""
        resultLabel.text = "0"
    }
    
    //кнопка равно
    @IBAction func resultAction(_ sender: UIButton) {
        
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double (numberOne)! /
                Double(numverTwo)!
        case"+":
            result = Double (numberOne)! +
                Double(numverTwo)!
        case"-":
            result = Double (numberOne)! -
                Double(numverTwo)!
        case"*":
            result = Double (numberOne)! *
                Double(numverTwo)!
        default:
            break
        }
        
        if result.truncatingRemainder(dividingBy: 1.0) == 0.0 {
            resultLabel.text = String(Int(result))
        }
        else
        {
            resultLabel.text = String(result)
        }
        
        
    }
    @IBAction func changeResultLabel(_sender: UIStepper) {
        let font = resultLabel.font?.fontName
        let fontSize = CGFloat(sender.value)
        
        resultLabel.font = UIFont(name: font!, size: fontSize)
    }
    
    @IBAction func hiddenButtons


}

