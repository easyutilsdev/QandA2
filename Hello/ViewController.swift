//
//  ViewController.swift
//  Hello
//
//  Created by sel2 on 2021/04/07.
//

import UIKit



class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        print("Button was tapped!")
    }
    
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch On")
        } else {
            print("Switch Off")
        }
    }
        
  
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    
    @IBAction func textFieldFunc(_ sender: Any) {
        
    }
    
}

