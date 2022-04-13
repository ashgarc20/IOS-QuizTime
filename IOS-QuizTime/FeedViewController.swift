//
//  FeedViewController.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/12/22.
//

import UIKit
import Parse

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // Outlets and variables
    @IBOutlet weak var quizSetsTableView: UITableView!
    
    var quizSets = [PFObject]()
    
    // End of Outlets and variables

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Code
        quizSetsTableView.delegate = self
        quizSetsTableView.dataSource = self
        
        // End Code
    }
    // Code
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "QuizSet")
        let currentUser = PFUser.current()
        query.whereKey("Author", equalTo: currentUser!)
        
        query.includeKey("Author")
        query.limit = 20
        
        query.findObjectsInBackground{ (quizSets, error) in
            
            
            if quizSets != nil{
                //if query.get("Author") == currentUser{
                    self.quizSets = quizSets!
                    self.quizSetsTableView.reloadData()
                    //print(quizSets["Author"])
                
                //}
                //print("helllo")
            } else{
                print("error")
            }
            
        }
        
            
    }
    
    // End of Code
    
    // Required functions for data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizSets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizSetCell") as! QuizSetCell
        
        let quizSet = quizSets[indexPath.row]
        
        //let user = quizSet["Author"] as! PFUser
        
        cell.quizSetNameLabel.text = (quizSet["QuizName"] as! String)
        
        cell.quizSetDesLabel.text = (quizSet["QuizDescription"] as! String)
        
        return cell
    }
    // End of Required functions for data source
}
