//
//  ViewController.swift
//  Color Picker
//
//  Created by Orrie on 10/4/18.
//  Copyright © 2018 Tech innovator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var Picker: UIPickerView!
    @IBOutlet weak var Label: UILabel!
    
    var colors = [Colors(colorNames: "Red", backgColor: UIColor.red),
                  Colors(colorNames: "Orange", backgColor: UIColor.orange),
                  Colors(colorNames: "Yellow", backgColor: UIColor.yellow),
                  Colors(colorNames: "Green", backgColor: UIColor.green),
                  Colors(colorNames: "Blue", backgColor: UIColor.blue),
                  Colors(colorNames: "Brown", backgColor: UIColor.brown),
                  Colors(colorNames: "Purple", backgColor: UIColor.purple)]

    var colorIndex: Int = 0
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorNames
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label.text = colors[row].colorNames
        self.view.backgroundColor = colors[row].backgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label.text=colors[colorIndex].colorNames
        self.view.backgroundColor = colors[colorIndex].backgColor
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


