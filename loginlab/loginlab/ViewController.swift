//
//  ViewController.swift
//  loginlab
//
//  Created by Kashika Baweja on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var ForgotUsername: UIButton!
    
    @IBOutlet weak var ForgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{
            return
        }
        if sender === ForgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        }else if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }else {
            segue.destination.navigationItem.title = Username.text
        }
    }

    @IBAction func LoginButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func ForgotUsernameTapped(_ sender: Any) {
        performSegue(withIdentifier: "viewcontroller", sender: sender)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "viewcontroller", sender: sender)
    }
}

