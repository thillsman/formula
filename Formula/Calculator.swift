//
//  Calculator.swift
//  Formula
//
//  Created by Tyler Hillsman on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class Calculator {
    var intake: Float = 0.0
    var calories: Float = 0.0
    var protein: Float = 0.0
    var water: Float = 0.0
    var fiber: Float = 0.0
    var calcium: Float = 0.0
    var iron: Float = 0.0
    var potassium: Float = 0.0
    var phosphorus: Float = 0.0
    var sodium: Float = 0.0
    var vitaminD: Float = 0.0
    var zinc: Float = 0.0
    
    func calc(formulaSelected:Formula, value:Float, toggleValue:Int) -> (intake: Float, calories: Float, protein: Float, water: Float, fiber: Float, calcium: Float, iron: Float, potassium: Float, phosphorus: Float, sodium: Float, vitaminD: Float, zinc: Float) {
        
        var ml = value
        
        switch formulaSelected {
        case .CP:
            if(toggleValue == 1){
                ml = ml / 1
            }
            intake = ml
            calories = ml * 1
            protein = ml / 1000 * 38
            water = ml * 0.82
            fiber = ml / 1000 * 6.8
            calcium = ml / 1000 * 1440
            iron = ml / 1000 * 14
            potassium = ml / 1000 * 42
            phosphorus = ml / 1000 * 1000
            sodium = ml / 1000 * 33
            vitaminD = ml / 1000 * 600
            zinc = ml / 1000 * 10.8
        case .CPRC:
            if(toggleValue == 1){
                ml = ml / 0.6
            }
            intake = ml
            calories = ml * 0.6
            protein = ml / 1000 * 30
            water = ml * 0.91
            fiber = ml / 1000 * 10
            calcium = ml / 1000 * 1440
            iron = ml / 1000 * 13
            potassium = ml / 1000 * 45.1
            phosphorus = ml / 1000 * 1050
            sodium = ml / 1000 * 33.5
            vitaminD = ml / 1000 * 100
            zinc = ml / 1000 * 6.8
        case .BKE:
            if(toggleValue == 1){
                ml = ml / 1
            }
            intake = ml
            calories = ml * 1
            protein = ml / 1000 * 30
            water = ml * 0.84
            fiber = ml / 1000 * 0
            calcium = ml / 1000 * 1260
            iron = ml / 1000 * 13.86
            potassium = ml / 1000 * 29
            phosphorus = ml / 1000 * 882
            sodium = ml / 1000 * 23.7
            vitaminD = ml / 1000 * 630
            zinc = ml / 1000 * 11.34
        case .BKEF:
            if(toggleValue == 1){
                ml = ml / 1.512
            }
            intake = ml
            calories = ml * 1.512
            protein = ml / 1000 * 42
            water = ml * 0.714
            fiber = ml / 1000 * 8.74
            calcium = ml / 1000 * 1470
            iron = ml / 1000 * 11.3
            potassium = ml / 1000 * 33.3
            phosphorus = ml / 1000 * 1260
            sodium = ml / 1000 * 30.1
            vitaminD = ml / 1000 * 840
            zinc = ml / 1000 * 6.3
        case .B:
            if(toggleValue == 1){
                ml = ml / 1
            }
            intake = ml
            calories = ml * 1
            protein = ml / 240 * 10
            water = ml * 0.838
            fiber = ml / 1000 * 0
            calcium = ml / 240 * 300
            iron = ml / 240 * 4.5
            potassium = ml / 240 * 11.8
            phosphorus = ml / 240 * 300
            sodium = ml / 240 * 6.5
            vitaminD = ml / 240 * 240
            zinc = ml / 240 * 4.5
        default:
            intake = 0.0
            calories = 0.0
            protein = 0.0
            water = 0.0
            fiber = 0.0
            calcium = 0.0
            iron = 0.0
            potassium = 0.0
            phosphorus = 0.0
            sodium = 0.0
            vitaminD = 0.0
            zinc = 0.0
        }
        return (intake, calories, protein, water, fiber, calcium, iron, potassium, phosphorus, sodium, vitaminD, zinc)
    }
    
}