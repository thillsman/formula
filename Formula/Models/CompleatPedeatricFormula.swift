//
//  CompleatPedeatricFormula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class CompleatPedeatricFormula: Formula {
    override func recalculate() {
        calories = milliliters * 1
        protein = milliliters / 1000 * 38
        water = milliliters * 0.82
        fiber = milliliters / 1000 * 6.8
        calcium = milliliters / 1000 * 1440
        iron = milliliters / 1000 * 14
        potassium = milliliters / 1000 * 42
        phosphorus = milliliters / 1000 * 1000
        sodium = milliliters / 1000 * 33
        vitaminD = milliliters / 1000 * 600
        zinc = milliliters / 1000 * 10.8
    }
}