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

    lazy var bmiModel = CalculateBMIModel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
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
        
        bmiModel.calculateBMI(height: heightSlider.value,
                              weight: weightSlider.value)

        self.performSegue(withIdentifier: "goToResult", sender: self)
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as! ResultVC
//        vc.bmiValue = "testing"
//        self.present(vc, animated: true)
    }
    
    //MARK: - Segues & Navigations
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultVC
            destinationVC.bmi = bmiModel.getBMI()
        }
    }
    
    
}

