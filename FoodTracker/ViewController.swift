//
//  ViewController.swift
//  FoodTracker
//
//  Created by 尾田貴洋 on 2018/10/13.
//  Copyright © 2018年 尾田貴洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Hundle the text field's user input through delegate callbacks.
         nameTextField.delegate = self
    }

    //MARK: UITextFeildDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        mealNameLabel.text = textField.text
    }
    
    //MARK: Ations
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        nameTextField.text = "Default Text"
    }
    
}

