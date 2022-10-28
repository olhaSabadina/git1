//
//  ViewController.swift
//  Reverse words
//
//  Created by Olya Sabadina on 2022-10-26.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nameOfPrograms: UILabel!
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var rules: UILabel!
    
    @IBOutlet weak var textField: UITextField!
  
    
    @IBOutlet weak var reversLable: UILabel!
    
    
    @IBOutlet weak var resultButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tapKontrol(_ sender: Any) {
        textField.resignFirstResponder()
    }
    

    @IBAction func actionButton(_ sender: Any) {
        if textField.text == "" {
            return reversLable.text = "Input you text, please!"
        } else if let inputText = textField.text {
            reversLable.text = String(inputText.reversed())
            textField.text = ""
            textField.resignFirstResponder()
        
        }
        textField.delegate = self
       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            actionButton(self)
            return true
    }
   

    
}
  


