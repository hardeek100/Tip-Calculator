//
//  ViewController.swift
//  TestTipCalc
//
//  Created by H P on 8/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amt: UITextField!
    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipCtrl: UISegmentedControl!
    
    var TipPercentages = [12.0, 20.0, 50.0]
    
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
        
    }

    @IBAction func changeTip(_ sender: Any) {
        let bill = Double(amt.text!) ?? 0
        
        let tip =  bill * (TipPercentages[tipCtrl.selectedSegmentIndex])/100
        
        let totalAmt = bill + tip
        
        tipAmt.text = String(format: "%.2f", tip)
        total.text = String(format: "%.2f", totalAmt)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        TipPercentages[0] = defaults.double(forKey: "first")
        TipPercentages[1] = defaults.double(forKey: "second")
        TipPercentages[2] = defaults.double(forKey: "third")
        
        
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        tipCtrl.setTitle(String(TipPercentages[0])+"%", forSegmentAt: 0)
        tipCtrl.setTitle(String(TipPercentages[1])+"%", forSegmentAt: 1)
        tipCtrl.setTitle(String(TipPercentages[2])+"%", forSegmentAt: 2)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
}

