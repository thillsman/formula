//
//  ViewController.swift
//  Formula
//
//  Created by Tyler Hillsman on 10/12/14.
//  Copyright (c) 2014 Tyler Hillsman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet weak var mlValue: UITextField!
    @IBOutlet weak var intakeVal: UILabel!
    @IBOutlet weak var caloriesVal: UILabel!
    @IBOutlet weak var proteinVal: UILabel!
    @IBOutlet weak var waterVal: UILabel!
    @IBOutlet weak var fiberVal: UILabel!
    @IBOutlet weak var calciumVal: UILabel!
    @IBOutlet weak var ironVal: UILabel!
    @IBOutlet weak var potassiumVal: UILabel!
    @IBOutlet weak var phosphorusVal: UILabel!
    @IBOutlet weak var sodiumVal: UILabel!
    @IBOutlet weak var vitaminDVal: UILabel!
    @IBOutlet weak var zincVal: UILabel!
    @IBOutlet weak var invisiLabel: UILabel!
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var caloriesView: UIView!
    @IBOutlet weak var intakeView: UIView!
    @IBOutlet weak var toggle: UISegmentedControl!
    var formulaOptions = Formula.allValues
    var formulaSelected: Formula?
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return formulaOptions.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return formulaOptions[row].rawValue
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        formulaSelected = formulaOptions[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formulaSelected = .CP
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func calculate() {
        var value: Float = (mlValue.text as NSString).floatValue
        var toggleValue = toggle.selectedSegmentIndex
        if(toggleValue == 1){
            caloriesView.alpha = 0
            intakeView.alpha = 1
        } else {
            caloriesView.alpha = 1
            intakeView.alpha = 0
        }
        var calculateReturn = Calculator()
        calculateReturn.calc(formulaSelected!, value: value, toggleValue: toggleValue)
        intakeVal.text = String(format: "%.1f", calculateReturn.intake)
        caloriesVal.text = String(format: "%.1f", calculateReturn.calories)
        proteinVal.text = String(format: "%.1f", calculateReturn.protein)
        waterVal.text = String(format: "%.1f", calculateReturn.water)
        fiberVal.text = String(format: "%.1f", calculateReturn.fiber)
        calciumVal.text = String(format: "%.1f", calculateReturn.calcium)
        ironVal.text = String(format: "%.1f", calculateReturn.iron)
        potassiumVal.text = String(format: "%.1f", calculateReturn.potassium)
        phosphorusVal.text = String(format: "%.1f", calculateReturn.phosphorus)
        sodiumVal.text = String(format: "%.1f", calculateReturn.sodium)
        vitaminDVal.text = String(format: "%.1f", calculateReturn.vitaminD)
        zincVal.text = String(format: "%.1f", calculateReturn.zinc)
    }
    
    @IBAction func toggleChanged(sender: UISegmentedControl) {
        switch toggle.selectedSegmentIndex {
        case 0:
            inputLabel.text = "ml/day"
            mlValue.text = ""
        case 1:
            inputLabel.text = "kcal/day"
            mlValue.text = ""
        default:
            break;
        }
    }
    
}