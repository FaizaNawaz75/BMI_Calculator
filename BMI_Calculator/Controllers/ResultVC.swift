//
//  ResultVC.swift
//  BMI_Calculator
//
//  Created by Faiza Nawaz on 02/04/2023.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    var bmiValue: String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        lbResult.text = bmiValue
    }

    func setBmiValue(inputBMI: String) {
        bmiValue = inputBMI
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
