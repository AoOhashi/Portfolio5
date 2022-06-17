//
//  ViewController.swift
//  BMICaluculator
//
//  Created by Ao Ohashi on 2022/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var BMIlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightTextField.placeholder = "身長をcmで入力してください。"
        weightTextField.placeholder = "体重をkgで入力してください。"
    }

    @IBAction func calcButtonAction(_ sender: Any) {
        let doubleH = Double(heightTextField.text!)
        let doublew = Double(weightTextField.text!)
        BMIlabel.text = calculation(height: doubleH!, weight: doublew!)
    }
    
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        result = floor(result * 10) / 10
        
        return result.description
    }
    
}

