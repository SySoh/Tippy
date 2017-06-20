//
//  ViewController.swift
//  Tippy
//
//  Created by Shao Yie Soh on 6/20/17.
//  Copyright © 2017 Shao Yie Soh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalAmt: UILabel!
    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var billAmt: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billAmt.text!) ?? 0
        let tipPercents = [0.15,0.18,0.22]
        let tip = bill * tipPercents[tipPercent.selectedSegmentIndex]
        let total = bill + tip
      
        tipAmt.text = String(format: "$%.2f", tip)
        totalAmt.text = String(format:"$%.2f", total)
        
        
    }
    

}

