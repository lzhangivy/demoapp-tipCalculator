//
//  ViewController.swift
//  TodoiT
//
//  Created by Lijing Zhang on 9/20/19.
//  Copyright © 2019 Lijing Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountField: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var EachPay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let people = 1.00
        let bill = Double(AmountField.text!) ?? 0
        
        //calculate
        let tipPercentage = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let each = total/people
        
        //update label
        tiplabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
        EachPay.text = String(format: "$%.2f", each)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    

}

