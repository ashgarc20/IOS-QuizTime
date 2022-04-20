//
//  QAViewController.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/13/22.
//

import UIKit
import Parse

class QAViewController: UIViewController{
    
    // Outlets and other
    var quizSet: PFObject?
    
    
    //IBOutlet weak var questionLabel: UILabel!
    //IBOutlet weak var answerLabel: UILabel!
    
    
    
    // End of Outlets and other

    override func viewDidLoad() {
        super.viewDidLoad()
        // Begin code here
        print(quizSet!.object(forKey: "QuizName")!)
        
        //questionLabel.text = quizSet["QuizName"]["Question"]
        
        // End of code
    }
    
    // Action Outlets
    @IBAction func editQAButton(_ sender: Any) {
        
    }
    
    
    @IBAction func deleteQAButton(_ sender: Any) {
        
    }
    
    
    // End of Action Outlets
}
