//
//  CompleatPedeatricFormula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class BoostKidEssentialsFormula: Formula {
    override var caloriesMultiplier: Float { return 1.0 }
    override var protein: Float { return milliliters / 1000 * 30 }
    override var water: Float { return milliliters * 0.84 }
    override var fiber: Float { return milliliters / 1000 * 0 }
    override var calcium: Float { return milliliters / 1000 * 1260 }
    override var iron: Float { return milliliters / 1000 * 13.86 }
    override var potassium: Float { return milliliters / 1000 * 29 }
    override var phosphorus: Float { return milliliters / 1000 * 882 }
    override var sodium: Float { return milliliters / 1000 * 23.7 }
    override var vitaminD: Float { return milliliters / 1000 * 630 }
    override var zinc: Float { return milliliters / 1000 * 11.34 }
}