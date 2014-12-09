//
//  Formula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class Formula {
    var intake: Intake
    
    // MARK: Multipliers
    
    // This is defined in a "computed property" so we can override it in subclasses.
    // Swift does not let you override defined-value properties.
    var caloriesMultiplier: Float { return 1.0 }
    
    // MARK: Calculation properties
    // These are exposed as properties because they're values derived from very basic calculation.
    // It's more of a semantic thing than a hard requirement.
    
    var milliliters: Float {
        switch intake {
        case let .Direct(value):
            return value
        case let .Calories(value):
            return value / caloriesMultiplier
        }
    }
    // This one is defined in the super-class and not usually overriden in subclasses, because
    // the calculation doesn't change (instead, override caloriesMultiplier).
    var calories: Float { return milliliters * caloriesMultiplier }
    var protein: Float { return milliliters * 1.0 }
    var water: Float { return milliliters * 1.0 }
    var fiber: Float { return milliliters * 1.0 }
    var calcium: Float { return milliliters * 1.0 }
    var iron: Float { return milliliters * 1.0 }
    var potassium: Float { return milliliters * 1.0 }
    var phosphorus: Float { return milliliters * 1.0 }
    var sodium: Float { return milliliters * 1.0 }
    var vitaminD: Float { return milliliters * 1.0 }
    var zinc: Float { return milliliters * 1.0 }
    
    init(intake: Intake) {
        self.intake = intake
    }
}