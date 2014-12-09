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
    var formulaOptions = FormulaType.allValues
    var formulaSelected: FormulaType?
    
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
        recalculateForTextValue(mlValue.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formulaSelected = .CP
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func recalculateForTextValue(textValue: String) {
        let value: Float = (textValue as NSString).floatValue
        var intakeValue = Intake.Direct(value)
        
        if (toggle.selectedSegmentIndex == 1) {
            intakeValue = Intake.Calories(value)
            caloriesView.alpha = 0
            intakeView.alpha = 1
        } else {
            caloriesView.alpha = 1
            intakeView.alpha = 0
        }
        
        var formula = Calculator.formula(intakeValue, type: formulaSelected!)
        intakeVal.text = String(format: "%.1f", formula.milliliters)
        caloriesVal.text = String(format: "%.1f", formula.calories)
        proteinVal.text = String(format: "%.1f", formula.protein)
        waterVal.text = String(format: "%.1f", formula.water)
        fiberVal.text = String(format: "%.1f", formula.fiber)
        calciumVal.text = String(format: "%.1f", formula.calcium)
        ironVal.text = String(format: "%.1f", formula.iron)
        potassiumVal.text = String(format: "%.1f", formula.potassium)
        phosphorusVal.text = String(format: "%.1f", formula.phosphorus)
        sodiumVal.text = String(format: "%.1f", formula.sodium)
        vitaminDVal.text = String(format: "%.1f", formula.vitaminD)
        zincVal.text = String(format: "%.1f", formula.zinc)
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
        recalculateForTextValue(mlValue.text)
    }
    
    @IBAction func textValueChanged(sender: UITextField) {
        recalculateForTextValue(sender.text)
    }
}