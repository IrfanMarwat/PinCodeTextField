//
//  ViewController.swift
//  PinCodeTextField
//
//  Created by Alexander Tkachenko on 3/15/17.
//  Copyright © 2017 organization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinCodeTextField: PinCodeTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinCodeTextField.delegate = self
        pinCodeTextField.keyboardType = .numberPad        
    }

    override public var prefersStatusBarHidden: Bool {
        return false
    }
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}


extension ViewController: PinCodeTextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: PinCodeTextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: PinCodeTextField) {
        
    }
    
    func textFieldValueChanged(_ textField: PinCodeTextField) {
        print("value changed: \(String(describing: textField.text))")
    }
    
    func textFieldShouldEndEditing(_ textField: PinCodeTextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: PinCodeTextField) -> Bool {
        return true
    }
}
