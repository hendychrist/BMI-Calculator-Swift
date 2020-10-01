
//  BMI Calculator
//  SecondViewController.swift

//  Created by Hendy Christian 17/06/2020.
//  Copyright © 2020 Hendy Christian. All rights reserved.

import Foundation
import UIKit

class SecondViewController: UIViewController{
    
    var bmiValue = "0.0"
    
    // Doing here when the view loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
            label.text = bmiValue
            label.frame = CGRect(x:0 , y:0 , width:100 , height:50)
            view.addSubview(label)
        
    }
    
}
