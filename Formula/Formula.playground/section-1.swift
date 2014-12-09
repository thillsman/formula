// Playground - noun: a place where people can play

import UIKit

var formula = "Compleat Pediatric Reduced Calorie"
var ml:Float = 800

// var kcal = 1000

switch formula {
    case "Compleat Pediatric":
        var protein = ml / 1000 * 38
        var water = ml * 0.82
        var fiber = ml / 1000 * 6.8
        var calcium = ml / 1000 * 1440
        var iron = ml / 1000 * 14
        var potassium = ml / 1000 * 42
        var phosphorus = ml / 1000 * 1000
        var sodium = ml / 1000 * 33
        var vitaminD = ml / 1000 * 600
        var zinc = ml / 1000 * 10.8
    case "Compleat Pediatric Reduced Calorie":
        var protein = ml / 1000 * 30
        var water = ml * 0.91
        var fiber = ml / 1000 * 10
        var calcium = ml / 1000 * 1440
        var iron = ml / 1000 * 13
        var potassium = ml / 1000 * 45.1
        var phosphorus = ml / 1000 * 1050
        var sodium = ml / 1000 * 33.5
        var vitaminD = ml / 1000 * 100
        var zinc = ml / 1000 * 6.8
    case "Boost Kid Essentials":
        var protein = ml / 1000 * 30
        var water = ml * 0.84
        var fiber = ml / 1000 * 0
        var calcium = ml / 1000 * 1260
        var iron = ml / 1000 * 13.86
        var potassium = ml / 1000 * 29
        var phosphorus = ml / 1000 * 882
        var sodium = ml / 1000 * 23.7
        var vitaminD = ml / 1000 * 630
        var zinc = ml / 1000 * 11.34
    case "Boost Kid Essentials 1.5 with fiber":
        var protein = ml / 1000 * 42
        var water = ml * 0.714
        var fiber = ml / 1000 * 8.74
        var calcium = ml / 1000 * 1470
        var iron = ml / 1000 * 11.3
        var potassium = ml / 1000 * 33.3
        var phosphorus = ml / 1000 * 1260
        var sodium = ml / 1000 * 30.1
        var vitaminD = ml / 1000 * 840
        var zinc = ml / 1000 * 6.3
    case "Boost":
        var protein = ml / 240 * 10
        var water = ml * 0.838
        var fiber = ml / 1000 * 0
        var calcium = ml / 240 * 300
        var iron = ml / 240 * 4.5
        var potassium = ml / 240 * 11.8
        var phosphorus = ml / 240 * 300
        var sodium = ml / 240 * 6.5
        var vitaminD = ml / 240 * 240
        var zinc = ml / 240 * 4.5
    default:
        var protein = null
        var water = null
        var fiber = null
        var calcium = null
        var iron = null
        var potassium = null
        var phosphorus = null
        var sodium = null
        var vitaminD = null
        var zinc = null
}
