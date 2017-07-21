//
//  Activity.swift
//  calorie calculator
//
//  Created by Ava Crnkovic-Rubsamen on 7/21/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation

class Activity {
    
    var categories = ["Bicycling", "Conditioning Exercise", "Dancing", "Fishing & Hunting", "Home Activities", "Home Repair", "Inactivity", "Lawn & Garden", "Miscellaneous", "Music Playing", "Occupation", "Running", "Self Care", "Sexual Activity", "Sports", "Transportation", "Walking", "Water Activities", "Winter Activities", "Religious Activities", "Volunteer Activities"]
    
    let activities = [
        ["bicycling, mountain, uphill, vigorous", "bicycling, mountain, competitive, racing", "bicycling, BMX", "bicycling, mountain, general", "bicycling, <10 mph, leisure, to work or for pleasure", "bicycling, to/from work, self selected pace", "bicycling, on dirt or farm road, moderate pace", "bicycling, general", "bicycling, leisure, 5.5 mph", "bicycling, leisure, 9.4 mph", "bicycling, 10-11.9 mph, leisure, slow, light effort", "bicycling, 12-13.9 mph, leisure, moderate effort", "bicycling, 14-15.9 mph, racing or leisure, fast, vigorous effort", "bicycling, 16-19 mph, racing/not drafting or > 19 mph drafting, very fast, racing general", "bicycling, > 20 mph, racing, not drafting", "bicycling, 12 mph, seated, hands on brake hoods or bar drops, 80 rpm", "bicycling, 12 mph, standing, hands on brake hoods, 60 rpm", "unicycling"],
        ["activity promoting video game (e.g., Wii Fit), light effort (e.g., balance, yoga)", "activity promoting video game (e.g., Wii Fit), moderate effort (e.g., aerobic, resistance)", "activity promoting video/arcade game (e.g., Exergaming, Dance Dance Revolution), vigorous effort", "army type obstacle course exercise, boot camp training program", "bicycling, stationary, general", "bicycling, stationary, 30-50 watts, very light to light effort", "bicycling, stationary, 90-100 watts, moderate to vigorous effort", "bicycling, stationary, 101-160 watts, vigorous effort", "bicycling, stationary, 161-200 watts, vigorous effort", "bicycling, stationary, 201-270 watts, very vigorous effort", "bicycling, stationary, 51-89 watts, light-to-moderate effort", "bicycling, stationary, RPM/Spin bike class", "calisthenics (e.g., push ups, sit ups, pull-ups, jumping jacks), vigorous effort", "calisthenics (e.g., push ups, sit ups, pull-ups, lunges), moderate effort", "calisthenics (e.g., situps, abdominal crunches), light effort", "calisthenics, light or moderate effort, general (example: back exercises), going up & down from floor", "circuit training, moderate effort", "circuit training, including kettlebells, some aerobic movement with minimal rest, general, vigorous intensity", "CurvesTM exercise routines in women", "Elliptical trainer, moderate effort", "resistance training (weight lifting - free weight, nautilus or universal-type), power lifting or body building, vigorous effort", "resistance (weight) training, squats , slow or explosive effort", "resistance (weight) training, multiple exercises, 8-15 repetitions at varied resistance", "health club exercise, general", "health club exercise classes, general, gym/weight training combined in one visit", "health club exercise, conditioning classes", "home exercise, general", "stair-treadmill ergometer, general", "rope skipping, general", "rowing, stationary ergometer, general, vigorous effort", "rowing, stationary, general, moderate effort", "rowing, stationary, 100 watts, moderate effort", "rowing, stationary, 150 watts, vigorous effort", "rowing, stationary, 200 watts, very vigorous effort", "ski machine, general", "slide board exercise, general", "slimnastics, jazzercise", "stretching, hatha yoga", "stretching, mild", "pilates, general", "teaching exercise class (e.g., aerobic, water)", "therapeutic exercise ball, Fitball exercise", "upper body exercise, arm ergometer", "upper body exercise, stationary bicycle - Airdyne (arms only) 40 rpm, moderate", "water aerobics, water calisthenics, water exercise", "weight lifting (free, nautilus or universal-type), light or moderate effort, light workout, general", "whirlpool, sitting", "video exercise workouts, TV conditioning programs (e.g., yoga, stretching), light effort", "video exercise workouts, TV conditioning programs (e.g., cardio-resistance), moderate effort", "video exercise workouts, TV conditioning programs (e.g., cardio-resistance), vigorous effort", "yoga, Hatha", "yoga, Power", "yoga, Nadisodhana", "yoga, Surya Namaskar", "native New Zealander physical activities (e.g., Haka Powhiri, Moteatea, Waita Tira, Whakawatea, etc.) , general, moderate effort", "native New Zealander physical activities (e.g., Haka, Taiahab), general, vigorous effort"],
        ["ballet, modern, or jazz, general, rehearsal or class", "ballet, modern, or jazz, performance, vigorous effort", "tap", "aerobic, general", "aerobic, step, with 6 - 8 inch step", "aerobic, step, with 10 - 12 inch step", "aerobic, step, with 4-inch step", "bench step class, general", "aerobic, low impact", "aerobic, high impact", "aerobic dance wearing 10-15 lb weights", "ethnic or cultural dancing (e.g., Greek, Middle Eastern, hula, salsa, merengue, bamba y plena, flamenco, belly, and swing)", "ballroom, fast", "general dancing (e.g., disco, folk, Irish step dancing, line dancing, polka, contra, country)", "ballroom dancing, competitive, general", "ballroom, slow (e.g., waltz, foxtrot, slow dancing, samba, tango, 19th century dance, mambo, cha cha)", "Anishinaabe Jingle Dancing", "Caribbean dance (Abakua, Beguine, Bellair, Bongo, Brukin's, Caribbean Quadrills, Dinki Mini, Gere, Gumbay, Ibo, Jonkonnu, Kumina, Oreisha, Jambu)"],
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
    
    var index = 0
    var contents: [String] = [String]()
}
