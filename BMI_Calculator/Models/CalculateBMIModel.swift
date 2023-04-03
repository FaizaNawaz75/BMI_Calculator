//
//  CalculateBMIModel.swift
//  BMI_Calculator
//
//  Created by Faiza Nawaz on 02/04/2023.
//

import UIKit

enum BMICategory {
    case obese
    case overweight
    case normal
    case underweight
}

struct CalculateBMIModel {
    
    var bmi: BMI?
    
    func getBMI () -> BMI? {
        
        return bmi ?? nil
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight/pow(height, 2)
        let bmiCategory = bmiCategory(bmiValue: bmiValue)
        
        bmi = BMI(value: bmiValue,
                  advice: bmiAdvice(bmiCategory: bmiCategory),
                  color: bmiColor(bmiCategory: bmiCategory))
        
        print (bmi ?? "")
    }
    
    private func bmiCategory(bmiValue: Float) -> BMICategory{
        
        if bmiValue > 30.0 {
            return .obese
        }
        if bmiValue > 24.9 {
            return .overweight
        }
        else if bmiValue > 18.5 {
            return .normal
        }
        else {
            return .underweight
        }
    }
    
    private func bmiAdvice(bmiCategory: BMICategory) -> String {
        
        switch bmiCategory {
        case .underweight:
            return "Grab some pies"
        case .normal:
            return "Fit as a fiddle!"
        case .overweight:
            return "You need to be mindful of your health"
        case .obese:
            return "Time to make lifestyle changes!!!"
        }
    }
    
    private func bmiColor(bmiCategory: BMICategory) -> UIColor {
        
//        I used colorLiteral this way. It's not working for me otherwise
//        colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))

        switch bmiCategory {
        case .underweight:
            return #colorLiteral(red: 0, green: 0.4627088308, blue: 0.7935237288, alpha: 1)
        case .normal:
            return #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        case .overweight:
            return #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        case .obese:
            return #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
    }
}
