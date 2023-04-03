//
//  ResultVC.swift
//  BMI_Calculator
//
//  Created by Faiza Nawaz on 02/04/2023.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var lbAdvice: UILabel!
    @IBOutlet weak var lbResult: UILabel!
    var bmi: BMI?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        
        let bmiValue = bmi?.value ?? 0.0
        lbResult.text = "\(String(format: "%.2f", bmiValue))"
        lbAdvice.text = bmi?.advice ?? ""
        self.view.backgroundColor = bmi?.color ?? UIColor.white
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
