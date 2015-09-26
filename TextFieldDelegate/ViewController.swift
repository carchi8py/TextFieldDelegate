//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Chris Archibald on 9/25/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var data: String?

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        saveLogic()
    }
    
    func saveLogic() {
        data = textField.text
        println("Data: \(data)")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        saveLogic()
        return true
    }

}

