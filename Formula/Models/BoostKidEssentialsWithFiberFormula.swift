//
//  BoostKidEssentialsWithFiberFormula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class BoostKidEssentialsWithFiberFormula: Formula {
    override var caloriesMultiplier: Float { return 1.512 }
    override var protein: Float { return milliliters / 1000 * 42 }
    override var water: Float { return milliliters * 0.714 }
    override var fiber: Float { return milliliters / 1000 * 8.74 }
    override var calcium: Float { return milliliters / 1000 * 1470 }
    override var iron: Float { return milliliters / 1000 * 11.3 }
    override var potassium: Float { return milliliters / 1000 * 33.3 }
    override var phosphorus: Float { return milliliters / 1000 * 1260 }
    override var sodium: Float { return milliliters / 1000 * 30.1 }
    override var vitaminD: Float { return milliliters / 1000 * 840 }
    override var zinc: Float { return milliliters / 1000 * 6.3 }
}