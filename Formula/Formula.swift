//
//  Formula.swift
//  Formula
//
//  Created by Tyler Hillsman on 12/8/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import Foundation

enum Formula: String {
    case CP = "Compleat Pediatric"
    case CPRC = "Compleat Pediatric Reduced Calorie"
    case BKE = "Boost Kid Essentials"
    case BKEF = "Boost Kid Essentials 1.5 with fiber"
    case B = "Boost"
    
    static let allValues = [CP, CPRC, BKE, BKEF, B]
}