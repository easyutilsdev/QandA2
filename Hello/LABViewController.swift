//
//  LABViewController.swift
//  Hello
//
//  Created by sel2 on 2021/04/08.
//

import UIKit

class LABViewController: UIViewController {

    @IBOutlet weak var textLable: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        if let inputText = textField.text {
            textLable.text = inputText
        }
        textField.resignFirstResponder()
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textLable.text = ""
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
