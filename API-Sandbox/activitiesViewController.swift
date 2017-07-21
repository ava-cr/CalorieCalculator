//
//  activitiesViewController.swift
//  calorie calculator
//
//  Created by Ava Crnkovic-Rubsamen on 7/20/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class activitiesViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var activity = Activity()
    
    //activity category picker
    @IBOutlet weak var activityCategoryPicker: UIPickerView!
    @IBOutlet weak var durationTextField: UITextField!
    @IBOutlet weak var caloriesBurnedLabel: UILabel!
    
    
    var activityCategoryData: [String] = [String]()
    var activityData: [String] = [String]()
    
    @IBOutlet weak var activityPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        activityCategoryPicker.delegate = self
        activityCategoryPicker.dataSource = self
        activityPicker.delegate = self
        activityPicker.dataSource = self
        activityData = activity.activities[0]
        activityCategoryData = activity.categories
        
        durationTextField.delegate = self
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
        if pickerView.tag == 1 {
            return activityCategoryData.count
        } else {
            return activityData.count
        }
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return activityCategoryData[row]
        } else {
            return activityData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label = view as! UILabel!
        if label == nil {
            label = UILabel()
            label?.textColor = UIColor.white
        }
        switch component {
        case 0:
            
            if pickerView.tag == 1 {
                label?.text = activityCategoryData[row]
                label?.font = UIFont(name:"Helvetica Neue - Thin", size:15)
            } else {
                label?.text = activityData[row]
                label?.font = UIFont(name:"Helvetica Neue - Thin", size:14)
            }
            label?.textAlignment = .center
            return label!
        default:
            return label!
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        if pickerView.tag == 1 {
            activityData = activity.activities[row]
            activityPicker.reloadAllComponents();
            activityPicker.selectRow(0, inComponent: 0, animated: true)
        }
        else {
            print("activity chosen!")
        }
    }
    
    // duration + calculation:
    
  

}
extension activitiesViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        durationTextField.resignFirstResponder()
        activity.duration = durationTextField.text ?? ""
        print("activity.duration " + "\(activity.duration)")
        caloriesBurnedLabel.text = "999"
        return true
    }}























