//
//  ViewController.swift
//  PracticalAnimationsLab
//
//  Created by Skyler Robbins on 12/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitButtonPressed(_ sender: UIButton) {
        if emailTextField.text?.isEmpty == true {
            print("false")
            let translateTransformRight = CGAffineTransform(translationX: 25, y: 0)
            UITextField.animate(withDuration: 0.2, animations: {
                self.emailTextField.transform = translateTransformRight
            }) { (_) in UITextField.animate(withDuration: 0.2) {
                self.emailTextField.transform = .identity
            }
            }
        } else {
            performSegue(withIdentifier: "enteredContest", sender: nil)
            print("true")
        }
    }
    
}

