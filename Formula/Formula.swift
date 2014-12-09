//
//  Formula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class Formula {
    var intake: Intake {
        didSet { recalculate() }
    }
    
    var milliliters: Float {
        switch intake {
        case let .Direct(value):
            return value
        case let .Calories(value):
            return value / caloriesPerMilliliter
        }
    }
    var caloriesPerMilliliter: Float = 1.0
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
    
    init(intake: Intake) {
        self.intake = intake
    }
    
    func recalculate() {
        // Nothing here yet. Definitely reimplement this method in subclasses.
    }
}