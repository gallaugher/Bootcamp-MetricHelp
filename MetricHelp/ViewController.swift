//
//  ViewController.swift
//  MetricHelp
//
//  Created by John Gallaugher on 6/10/19.
//  Copyright © 2019 John Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var distanceField: UITextField!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var useMetricSwitch: UISwitch!
    @IBOutlet weak var resultsLabel: UILabel!
    let milesToKm = 1.60934
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleMetricSwitch(_ sender: UISwitch) {
        if useMetricSwitch.isOn {
            distanceLabel.text = "miles"
        } else {
            distanceLabel.text = "kilometers"
        }
        resultsLabel.text = ""
    }
    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        if let distanceRun = Double(distanceField.text!) {
            if useMetricSwitch.isOn {
                let convertedRun = distanceRun * milesToKm
                resultsLabel.text = "You ran \(distanceRun) miles. That's \(convertedRun) kilometers!"
            } else {
                let convertedRun = distanceRun / milesToKm
                resultsLabel.text = "You ran \(distanceRun) kilometers. That's \(convertedRun) miles!"
            }
        } else {
            // I couldn't convert to a Double. I got a nil
            resultsLabel.text = "Please enter a valid number without any letters, spaces, or symbols."
        }
        
        
        
        
        
        
        
        //        guard let distanceRun = Double(distanceField.text!) else  {
        //            resultsLabel.text = "Please enter a valid number without any letters, spaces, or symbols."
        //            return
        //        }
        //        if useMetricSwitch.isOn {
        //            let convertedRun = distanceRun * milesToKm
        //            resultsLabel.text = "You ran \(distanceRun) miles. That's \(convertedRun) kilometers!"
        //        } else {
        //            let convertedRun = distanceRun / milesToKm
        //            resultsLabel.text = "You ran \(distanceRun) kilometers. That's \(convertedRun) miles!"
        //        }
    }
}

