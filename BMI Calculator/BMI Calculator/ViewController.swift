//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Kashika Baweja on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weighttextField: UITextField!
    
    
    @IBOutlet weak var HeighttextField: UITextField!
    
    @IBOutlet weak var BMIis: UILabel!
    
    @IBOutlet weak var BmiTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
      
    }

    
    @IBAction func CalculateButton(_ sender: Any) {
        let weightString : String = weighttextField.text ?? ""
        let weight : Double = Double(weightString) ?? 0
        let heightString : String = HeighttextField.text ?? ""
        let height : Double = Double(heightString) ?? 0
        let bmi : Double = weight / (height * height)
        BmiTextField.text = String(format: "%.2f", bmi)
        print("button is tapped: \(BmiTextField.text)")
        BMIis.text = "Result"
    }
    
    @IBAction func resultofbmi(_ sender: Any) {
    }
}

