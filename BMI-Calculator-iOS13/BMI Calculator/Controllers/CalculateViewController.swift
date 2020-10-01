
//  BMI Calculator
//  ViewController.swift

//  Created by Hendy Christian 17/06/2020.
//  Copyright © 2020 Hendy Christian. All rights reserved.

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
     
        let angka2 = String(format: "%.2f" + "m", sender.value)
        heightLabel.text = angka2
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        // Decimal to Int
        let angka3 = String(format: "%.0f" + "Kg", sender.value)
         weightLabel.text = angka3
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
  
        let bmi = weight / pow(height,2)
        bmiValue = String(format: "%.1f", bmi)
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult" , sender: self)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f" , bmi)
//        self.present(secondVC , animated: true, completion: nil)
    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            
            if segue.identifier == "goToResult" {
                
                let destinationVC  = segue.destination as! ResultViewController
                destinationVC.bmiValue = calculatorBrain.getBMIValue()
                
                destinationVC.advice = calculatorBrain.getAdvice()
                destinationVC.color = calculatorBrain.getColor()
                
            }// Close if
            
        }
        
}

