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
    var weight = 0.0
    var height = 0.0
    var age = 0.0
    var estimatedCalories = 0
        

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
        
        //BMI calculation
        weight = Double(person.weight)!
        height = Double(person.height)!
        age = Double(person.age)!
        BMI = weight/(height * height)
        bmiLabel.text = String(format: "%.2f", BMI)
        
        //RMR calculation
        if person.sex == "Male" {
            RMR = 88.4 + (13.4 * weight)
            RMR = RMR + 4.8 * (height/100)
            RMR = RMR - 5.68 * age
        }
        rmrLabel.text = String(format: "%.2f", RMR)
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
