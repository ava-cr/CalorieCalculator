//
//  PersonalInfoViewController.swift
//  calorie calculator
//
//  Created by Ava Crnkovic-Rubsamen on 7/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController {
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var rmrLabel: UILabel!
    @IBOutlet weak var estimatedCaloriesLabel: UILabel!
    
    var BMI = 0.0
    var RMR = 0.0
//    var weight = 0.0
//    var height = 0.0
//    var age = 0.0
    var estimatedCalories = 0.0
    var weightLossCalories = 0.0
    var weightGainCalories = 0.0
        

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "infoFinished" {
               // print("\(person?.weight)")
                //print("BMI: " + "\(BMI)")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let weight = Double(person.weight) {
            if let height =  Double(person.height) {
                bmiLabel.textColor = UIColor.white

                
                //BMI calculation
                BMI = weight/(height * height)
                bmiLabel.text = String(format: "%.2f", BMI)
                
                //RMR calculation
                if let age = Double(person.age) {
                    if person.sex == "Male" {
                        RMR = 88.4 + (13.4 * weight)
                        RMR = RMR + 4.8 * (height/100)
                        RMR = RMR - 5.68 * age
                    }
                    if person.sex == "Female" {
                        RMR = 447.6 + 9.25 * weight
                        RMR = RMR + 3.1 * (height/100)
                        RMR = RMR - 4.33 * age
                    }
                    rmrLabel.text = String(format: "%.1f", RMR)
                }
                
                //Estimated Calories calculation
                for i in 1...5 {
                    if person.activity == String(i) {
                        estimatedCalories = RMR * (1.2 + Double(i) * 0.15)
                        weightLossCalories = estimatedCalories - estimatedCalories * 0.2
                        weightGainCalories = estimatedCalories + estimatedCalories * 0.2
                        estimatedCaloriesLabel.text = "Maintenance: " + String(format: "%.1f", estimatedCalories)
                        estimatedCaloriesLabel.text?.append(" Weight Gain: " + String(format: "%.1f", weightGainCalories))
                        estimatedCaloriesLabel.text?.append(" Weight Loss: " + String(format: "%.1f", weightLossCalories))
                    }
                }
                
            } else {
                bmiLabel.textColor = UIColor.red
                bmiLabel.text = "Information was inputted incorrectly. Press \"Back\" and try again."
                rmrLabel.text = ""
                estimatedCaloriesLabel.text = ""
            }
        } else {
            bmiLabel.textColor = UIColor.red
            bmiLabel.text = "Information was inputted incorrectly. Press \"Back\" and try again."
            rmrLabel.text = ""
            estimatedCaloriesLabel.text = ""
        }
    }
    
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
