//
//  ViewController.swift
//  Tip Calculator
//
//  Created by H P on 8/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var billAmt: UITextField!
    @IBOutlet weak var tipCtrl: UISegmentedControl!
    @IBOutlet weak var totalAmt: UILabel!
   // let defaults = UserDefaults.standard;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }
    
   
   
    @IBAction func tipCalculator(_ sender: Any) {
        let bill = Double(billAmt.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipCtrl.selectedSegmentIndex]
        let total = tip + bill
        
        tipAmt.text = String(format: "$%.2f", tip)
        totalAmt.text = String(format: "$%.2f", total)
        
    }
  
}

