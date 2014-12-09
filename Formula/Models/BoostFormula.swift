//
//  BoostFormula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class BoostFormula: Formula {
    override var caloriesMultiplier: Float { return 1.0 }
    override var protein: Float { return milliliters / 1000 * 10 }
    override var water: Float { return milliliters * 0.838 }
    override var fiber: Float { return milliliters / 1000 * 0 }
    override var calcium: Float { return milliliters / 1000 * 300 }
    override var iron: Float { return milliliters / 1000 * 4.5 }
    override var potassium: Float { return milliliters / 1000 * 11.8 }
    override var phosphorus: Float { return milliliters / 1000 * 300 }
    override var sodium: Float { return milliliters / 1000 * 6.5 }
    override var vitaminD: Float { return milliliters / 1000 * 240 }
    override var zinc: Float { return milliliters / 1000 * 4.5 }
}