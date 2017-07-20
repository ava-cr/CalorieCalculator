//
//  activitiesViewController.swift
//  calorie calculator
//
//  Created by Ava Crnkovic-Rubsamen on 7/20/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class activitiesViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //activity category picker
    @IBOutlet weak var activityCategoryPicker: UIPickerView!
    let activityCategoryData = ["Bicycling", "Conditioning Exercise", "Dancing", "Fishing & Hunting", "Home Activities", "Home Repair", "Inactivity", "Lawn & Garden", "Miscellaneous", "Music Playing", "Occupation", "Running", "Self Care", "Sexual Activity", "Sports", "Transportation", "Walking", "Water Activities", "Winter Activities", "Religious Activities", "Volunteer Activities"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        activityCategoryPicker.delegate = self
        activityCategoryPicker.dataSource = self
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activityCategoryData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activityCategoryData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label = view as! UILabel!
        if label == nil {
            label = UILabel()
            label?.textColor = UIColor.white
        }
        switch component {
        case 0:
            
            label?.text = activityCategoryData[row]
            label?.font = UIFont(name:"Helvetica Neue - Thin", size:15)
            label?.textAlignment = .center
            return label!
        default:
            return label!
        }
    }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        print("selected activity category: " + "\(activityCategoryData[row])")
    }

}
