//
//  Calculator.swift
//  Formula
//
//  Created by Tyler Hillsman on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

class Calculator {
    class func formula(intake: Intake, type: FormulaType) -> Formula {
        switch type {
        case .B:
            return BoostFormula(intake: intake)
        case .BKE:
            return BoostKidEssentialsFormula(intake: intake)
        case .BKEF:
            return BoostKidEssentialsWithFiberFormula(intake: intake)
        case .CP:
            return CompleatPediatricFormula(intake: intake)
        case .CPRC:
            return CompleatPediatricRCFormula(intake: intake)
        }
    }
}