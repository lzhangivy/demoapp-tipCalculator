//
//  SettingViewController.swift
//  TodoiT
//
//  Created by Lijing Zhang on 10/8/19.
//  Copyright © 2019 Lijing Zhang. All rights reserved.
//

import UIKit

class SettingViewController : UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{


    
    @IBOutlet weak var NumberPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Connect data:
        self.NumberPicker.delegate = self
        self.NumberPicker.dataSource = self
        
        // Input the data into the array
        pickerData = ["1", "2", "3", "4", "5", "6"]
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    // The data to return fopr the row and component (column) that's being passed in
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
