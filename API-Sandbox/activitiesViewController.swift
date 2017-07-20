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
    var activityData: [String] = [String]()
    
    @IBOutlet weak var activityPicker: UIPickerView!
    
    /***** ALL ACTIVITES *****/
    
    let activities = [
        ["bicycling, mountain, uphill, vigorous", "bicycling, mountain, competitive, racing", "bicycling, BMX", "bicycling, mountain, general", "bicycling, <10 mph, leisure, to work or for pleasure", "bicycling, to/from work, self selected pace", "bicycling, on dirt or farm road, moderate pace", "bicycling, general", "bicycling, leisure, 5.5 mph", "bicycling, leisure, 9.4 mph", "bicycling, 10-11.9 mph, leisure, slow, light effort", "bicycling, 12-13.9 mph, leisure, moderate effort", "bicycling, 14-15.9 mph, racing or leisure, fast, vigorous effort", "bicycling, 16-19 mph, racing/not drafting or > 19 mph drafting, very fast, racing general", "bicycling, > 20 mph, racing, not drafting", "bicycling, 12 mph, seated, hands on brake hoods or bar drops, 80 rpm", "bicycling, 12 mph, standing, hands on brake hoods, 60 rpm", "unicycling"],
        ["activity promoting video game (e.g., Wii Fit), light effort (e.g., balance, yoga)", "activity promoting video game (e.g., Wii Fit), moderate effort (e.g., aerobic, resistance)", "activity promoting video/arcade game (e.g., Exergaming, Dance Dance Revolution), vigorous effort", "army type obstacle course exercise, boot camp training program", "bicycling, stationary, general", "bicycling, stationary, 30-50 watts, very light to light effort", "bicycling, stationary, 90-100 watts, moderate to vigorous effort", "bicycling, stationary, 101-160 watts, vigorous effort", "bicycling, stationary, 161-200 watts, vigorous effort", "bicycling, stationary, 201-270 watts, very vigorous effort", "bicycling, stationary, 51-89 watts, light-to-moderate effort", "bicycling, stationary, RPM/Spin bike class", "calisthenics (e.g., push ups, sit ups, pull-ups, jumping jacks), vigorous effort", "calisthenics (e.g., push ups, sit ups, pull-ups, lunges), moderate effort", "calisthenics (e.g., situps, abdominal crunches), light effort", "calisthenics, light or moderate effort, general (example: back exercises), going up & down from floor", "circuit training, moderate effort", "circuit training, including kettlebells, some aerobic movement with minimal rest, general, vigorous intensity", "CurvesTM exercise routines in women", "Elliptical trainer, moderate effort", "resistance training (weight lifting - free weight, nautilus or universal-type), power lifting or body building, vigorous effort", "resistance (weight) training, squats , slow or explosive effort", "resistance (weight) training, multiple exercises, 8-15 repetitions at varied resistance", "health club exercise, general", "health club exercise classes, general, gym/weight training combined in one visit", "health club exercise, conditioning classes", "home exercise, general", "stair-treadmill ergometer, general", "rope skipping, general", "rowing, stationary ergometer, general, vigorous effort", "rowing, stationary, general, moderate effort", "rowing, stationary, 100 watts, moderate effort", "rowing, stationary, 150 watts, vigorous effort", "rowing, stationary, 200 watts, very vigorous effort", "ski machine, general", "slide board exercise, general", "slimnastics, jazzercise", "stretching, hatha yoga", "stretching, mild", "pilates, general", "teaching exercise class (e.g., aerobic, water)", "therapeutic exercise ball, Fitball exercise", "upper body exercise, arm ergometer", "upper body exercise, stationary bicycle - Airdyne (arms only) 40 rpm, moderate", "water aerobics, water calisthenics, water exercise", "weight lifting (free, nautilus or universal-type), light or moderate effort, light workout, general", "whirlpool, sitting", "video exercise workouts, TV conditioning programs (e.g., yoga, stretching), light effort", "video exercise workouts, TV conditioning programs (e.g., cardio-resistance), moderate effort", "video exercise workouts, TV conditioning programs (e.g., cardio-resistance), vigorous effort", "yoga, Hatha", "yoga, Power", "yoga, Nadisodhana", "yoga, Surya Namaskar", "native New Zealander physical activities (e.g., Haka Powhiri, Moteatea, Waita Tira, Whakawatea, etc.) , general, moderate effort", "native New Zealander physical activities (e.g., Haka, Taiahab), general, vigorous effort"],
        ["ballet, modern, or jazz, general, rehearsal or class", "ballet, modern, or jazz, performance, vigorous effort", "tap", "aerobic, general", "aerobic, step, with 6 - 8 inch step"],
        ["fishing, general"],
        ["cleaning, sweeping carpet or floors, general"],
        ["airplane repair"],
        ["lying quietly and watching television"],
        ["carrying, loading or stacking wood, loading/unloading or carrying lumber, light-to-moderate effort "],
        ["board game playing, sitting"],
        ["accordion, sitting"],
        ["active workstation, treadmill desk, walking "],
        ["jog/walk combination (jogging component of less than 10 minutes) (Taylor Code 180)"],
        ["getting ready for bed, general, standing"],
        ["active, vigorous effort"],
        ["Alaska Native Games, Eskimo Olympics, general"],
        ["automobile or light truck (not a semi) driving"],
        ["backpacking"],
        ["boating, power, driving"],
        ["dog sledding, mushing "],
        ["sitting in church, in service, attending a ceremony, sitting quietly"],
        ["sitting, meeting, general, and/or with talking involved"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        activityCategoryPicker.delegate = self
        activityCategoryPicker.dataSource = self
        activityPicker.delegate = self
        activityPicker.dataSource = self
        activityData = activities[0]
 
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
            } else {
                label?.text = activityData[row]
            }
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
        if pickerView.tag == 1 {
            activityData = activities[row]
        }
        else {
            print("activity chosen!")
        }
    }
}





















