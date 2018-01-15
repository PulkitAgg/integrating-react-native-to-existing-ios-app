//
//  ViewController.swift
//  NativeToReactNative
//
//  Created by Pulkit on 1/10/18.
//  Copyright © 2018 Pulkit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
    
    // MARK : - Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK : - Actions
    @IBAction func goToReactNative(_ sender: UIButton) {
        
        if let object = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Native") as? Native {
            object.value = nameTextField.text ?? ""
            if let navigator = navigationController {
                navigator.pushViewController(object, animated: true)
            }
        }
//        nameLabel.text = "Default Text"
//        print(nameTextField.text)
//        let obj = Native()
//        self.navigationController?.pushViewController(obj, animated: true)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        
//        let button = UIButton()
//        button.frame = CGRect(x: 0, y: 50, width: 200, height: 100)
//        button.titleLabel?.text = "demoBtn"
//        button.backgroundColor = UIColor.black
//        button.addTarget(self, action: #selector(btnPressed), for: .touchUpInside)
//        self.view.addSubview(button)
        
//        let tapGesture = UITapGestureRecognizer()
//        tapGesture.addTarget(self, action: #selector(dismissKeyboard))
//        self.view.addGestureRecognizer(tapGesture)
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
 
    
    
    
//    @objc func dismissKeyboard() {
//        self.view.endEditing(true)
//    }
//    @objc func btnPressed(){
//        print("btn pressed")
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sum(a:Int,b:Int)-> Int{
        return a+b
    }
}

