//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Faiza Nawaz on 02/04/2023.
//

import UIKit

class CalculateBMIVC: UIViewController {

    @IBOutlet weak var lbWeight: UILabel!
    @IBOutlet weak var lbHeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - Action Methods
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let sliderValue = String(format: "%.2f", sender.value)
        lbHeight.text = "\(sliderValue) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let sliderValue = String(format: "%.0f", sender.value)
        lbWeight.text = "\(sliderValue) kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let bmi = weightSlider.value/pow(heightSlider.value, 2)
        
        print("height = \(String(format: "%.1f", heightSlider.value))")
        print("weight = \(String(format: "%.1f", weightSlider.value))")
        print("bmi = \(String(format: "%.2f", bmi))")
        
//        kg/(height square)
        
        
        
    }
    
}

