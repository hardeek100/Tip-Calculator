//
//  SettingsVController.swift
//  TestTipCalc
//
//  Created by H P on 8/15/21.
//

import UIKit

class SettingsVController: UIViewController {

    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var third: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        first.text = defaults.string(forKey: "first")
        second.text = defaults.string(forKey: "second")
        third.text = defaults.string(forKey: "third")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeFirst(_ sender: Any) {
        let f = Double(first.text!) ?? 0
        let s = Double(second.text!) ?? 0
        let t = Double(third.text!) ?? 0
        
        defaults.setValue(f, forKey: "first")
        defaults.setValue(s, forKey: "second")
        defaults.setValue(t, forKey: "third")
        defaults.synchronize()
        
    }
    

}
