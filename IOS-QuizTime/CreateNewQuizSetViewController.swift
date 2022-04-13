//
//  CreateNewQuizSetViewController.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/12/22.
//

import UIKit
import Parse

class CreateNewQuizSetViewController: UIViewController {
    
    // Oulets
    @IBOutlet weak var QuizNameField: UITextField!
    @IBOutlet weak var QuizDescriptionField: UITextField!
    // End of Outlets

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Action Outlet
    @IBAction func onCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSubmitQuizSetButton(_ sender: Any) {
        
        let QuizSet = PFObject(className: "QuizSet")
        //let QuizSetQA = PFObject(className: "QuizSetQA")
        let QADictionary : [String: String] = [:]
        
        QuizSet["Author"] = PFUser.current()!
        QuizSet["QuizName"] = QuizNameField.text!
        QuizSet["QuizDescription"] = QuizDescriptionField.text!
        QuizSet["QA"] = QADictionary
        //QuizSetQA[""]
        
        QuizSet.saveInBackground{ (success, error) in
            if success {
                self.dismiss(animated: true, completion: nil)
                print("SAVED POST")
            } else {
                print("Error")
            }
        }
        
        
    }
    // End of Action Outlet

}
