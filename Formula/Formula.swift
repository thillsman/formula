//
//  Formula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class Formula {
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
    
    init(intake: Float) {
        self.intake = intake
    }
}