//
//  CompleatPedeatricRCFormula.swift
//  Formula
//
//  Created by Ben Kreeger on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class CompleatPedeatricRCFormula: Formula {
    override var caloriesMultiplier: Float { return 0.6 }
    override var protein: Float { return milliliters / 1000 * 30 }
    override var water: Float { return milliliters * 0.91 }
    override var fiber: Float { return milliliters / 1000 * 10 }
    override var calcium: Float { return milliliters / 1000 * 1440 }
    override var iron: Float { return milliliters / 1000 * 13 }
    override var potassium: Float { return milliliters / 1000 * 45.1 }
    override var phosphorus: Float { return milliliters / 1000 * 1050 }
    override var sodium: Float { return milliliters / 1000 * 33.5 }
    override var vitaminD: Float { return milliliters / 1000 * 100 }
    override var zinc: Float { return milliliters / 1000 * 6.8 }
}