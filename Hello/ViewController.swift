//
//  ViewController.swift
//  Hello
//
//  Created by sel2 on 2021/04/07.
//

import UIKit



class ViewController: UIViewController {


    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
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
        
    //
    // 
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    
    @IBAction func textFieldFunc(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
        
    }
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
        
    }
    
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: view)
        print(location)
            
        
    }
    
}

