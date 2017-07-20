//
//  InfoViewController.swift
//  calorie calculator
//
//  Created by Ava Crnkovic-Rubsamen on 7/18/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

var person = Person()


class InputViewController: UIViewController {
    
    
    @IBOutlet weak var sexSegmentedControl: UISegmentedControl!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var activitySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var finishedButton: UIBarButtonItem!
    
    
    @IBAction func finishedButtonTapped(_ sender: UIBarButtonItem) {
    }
    
    var sex = ""
    var activityLevel = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "infoFinished" {
                
                switch sexSegmentedControl.selectedSegmentIndex {
                case 0:
                    sex = "Male"
                case 1:
                    sex = "Female"
                default:
                    break
                }
                switch activitySegmentedControl.selectedSegmentIndex {
                case 0:
                    activityLevel = "1"
                case 1:
                    activityLevel = "2"
                case 2:
                    activityLevel = "3"
                case 3:
                    activityLevel = "4"
                case 4:
                    activityLevel = "5"
                default:
                    break
                }
                
                person.sex = sex
                person.weight = weightTextField.text ?? ""
                person.height = heightTextField.text ?? ""
                person.age = ageTextField.text ?? ""
                person.activity = activityLevel
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
