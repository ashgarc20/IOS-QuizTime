//
//  LoginViewController.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/12/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    // End of Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Action button below
    
    
    @IBAction func onSignIn(_ sender: Any) {
        
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("Error signing up: \(String(describing: error?.localizedDescription))")
            }
        }
        
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            
            if success{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error signing up: \(String(describing: error?.localizedDescription))")
            }
            
        }
        
        
    }
    
    // End of Action buttons
    

}
