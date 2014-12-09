//
//  CompleatPedeatricFormula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class CompleatPedeatricFormula: Formula {
    override var caloriesMultiplier: Float { return 1.0 }
    override var protein: Float { return milliliters / 1000 * 38 }
    override var water: Float { return milliliters * 0.82 }
    override var fiber: Float { return milliliters / 1000 * 6.8 }
    override var calcium: Float { return milliliters / 1000 * 1440 }
    override var iron: Float { return milliliters / 1000 * 14 }
    override var potassium: Float { return milliliters / 1000 * 42 }
    override var phosphorus: Float { return milliliters / 1000 * 1000 }
    override var sodium: Float { return milliliters / 1000 * 33 }
    override var vitaminD: Float { return milliliters / 1000 * 600 }
    override var zinc: Float { return milliliters / 1000 * 10.8 }
}