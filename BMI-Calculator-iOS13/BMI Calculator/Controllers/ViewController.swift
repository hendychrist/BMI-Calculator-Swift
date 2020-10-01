//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

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
      
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f" , bmi)
//
//        self.present(secondVC , animated: true, completion: nil)
    }
    
}

