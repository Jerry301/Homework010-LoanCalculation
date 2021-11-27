//
//  ViewController.swift
//  Homework010
//
//  Created by Chun-Yi Lin on 2021/11/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var housePriceTextField: UITextField!
    @IBOutlet weak var loanPercentageTextField: UITextField!
    @IBOutlet weak var loanYearTextField: UITextField!
    @IBOutlet weak var annualInterestRateTextField: UITextField!
    @IBOutlet weak var monthStipendTextField: UITextField!
    @IBOutlet weak var monthPayTextField: UITextField!
    @IBOutlet weak var hungryYearTextField: UITextField!
    
    //    var monthRate : Double = 0.1
    //    var loanMonth : Double = 12
    //    var interestRate : Double = 20
    //    var total : Double = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateClicked(_ sender: UIButton) {
        housePriceTextField.resignFirstResponder()
        loanPercentageTextField.resignFirstResponder()
        loanYearTextField.resignFirstResponder()
        annualInterestRateTextField.resignFirstResponder()
        monthStipendTextField.resignFirstResponder()
        
        if housePriceTextField.text == "" || loanPercentageTextField.text == "" || loanYearTextField.text == "" || annualInterestRateTextField.text == "" || monthStipendTextField.text == "" {
            
            monthPayTextField.text = "請完整輸入"
            hungryYearTextField.text = "請完整輸入"
            
        } else {
            let housePrice = Double(housePriceTextField.text!)! * 10000 * (Double(loanPercentageTextField.text!)! / 10)
            let annualInterestRate = Double(annualInterestRateTextField.text!)! / 100
            let monthInterestRate = annualInterestRate / 12
            let loanMonth = Double(loanYearTextField.text!)! * 12
            let interestRate = (pow((1 + monthInterestRate), loanMonth) * monthInterestRate) / (pow((1 + monthInterestRate), loanMonth) - 1)
            let monthPay = housePrice * interestRate
            let onePay = housePrice/(Double(monthStipendTextField.text!)!*12)
            monthPayTextField.text = String(format: "%.2f", monthPay)
            hungryYearTextField.text = String(format: "%.0f",onePay)
        }
    }
    
    
    
    @IBAction func resetClicked(_ sender: UIButton) {
        housePriceTextField.text = ""
        loanPercentageTextField.text = ""
        loanYearTextField.text = ""
        annualInterestRateTextField.text = ""
        monthStipendTextField.text = ""
        monthPayTextField.text = "0"
        hungryYearTextField.text = "0"
        
    }
    
}

