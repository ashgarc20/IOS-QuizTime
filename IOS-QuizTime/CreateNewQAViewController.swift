//
//  CreateNewQAViewController.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/13/22.
//

import UIKit
import Parse

class CreateNewQAViewController: UIViewController {
    
    // Outlets and more
    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var answerField: UITextField!
    
    // End of Outlets and more
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Action Outlets
    
    @IBAction func onCancel2Button(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSubmitQAButton(_ sender: Any) {
        
        let QSet = PFObject(className: "QuizSet")
        //let id = QSet.objectId
        
        //QSet["QA"] = [["AAAAA", "BBBB"]]
        
        
        //let query = PFQuery(className: "QuizSet")
        //let user = PFUser.current()
        //let current = user?.objectId
        //query.whereKey("objectId", equalTo: current!)
        
        
        
        //let query = PFObject.query("objectId")
        //query["QuizName"] = "HelloFromConsol
        //QSet["Author"] = PFObject.object
        //QSet.setObject( ["yes", "no"], forKey: "QA")
        //QAList["Author"] = PFUser.current()!
        //QAList["Question": "Answer"] = [questionField.text! : "no"]
        //QAList["Answer"]
        //QSet["Author"] = PFUser.current()!
        //QSet["QuizName"] = "CHANGED!!!!!"
        
        print("hello")
        //print(current!)
        //print("----")
        //print(id ?? 0)
        //print("----")
        
        QSet.saveInBackground{ (success, error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("Saved Post in Segue")
            } else {
                print("Error completing in segue")
            }
        }
         
        
    }
    
    // End of Action Outlets
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
