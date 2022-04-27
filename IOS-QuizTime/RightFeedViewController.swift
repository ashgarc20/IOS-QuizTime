//
//  RightFeedViewController.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/12/22.
//

import UIKit
import Parse

class RightFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    // Outlets and variables
    @IBOutlet weak var OtherQuizSetTableView: UITableView!
    var otherQuizSets = [PFObject]()
    // End of Outlets and variables
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // code added
        OtherQuizSetTableView.delegate = self
        OtherQuizSetTableView.dataSource = self
        // end of code added
    }
    // Other code
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "QuizSet")
        //let otherUser = PFUser.current()
        
        query.includeKey("Author")
        query.limit = 20
        
        query.findObjectsInBackground{(otherQuizSets, error) in
            
            if otherQuizSets != nil{
                self.otherQuizSets = otherQuizSets!
                self.OtherQuizSetTableView.reloadData()
            } else{
                print("Error Displaying other quiz sets!")
            }
            
            
        }
        
    }
    
    // End of other code
    
    
    // Required functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return otherQuizSets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OtherQuizSetCell") as! OtherQuizSetCell
        let otherQuizSet = otherQuizSets[indexPath.row]
        cell.otherQuizSetNameLabel.text = (otherQuizSet["QuizName"] as? String)
        cell.otherQuizSetDescLabel.text = (otherQuizSet["QuizDescription"] as? String)
        cell.otherAuthorLabel.text = (otherQuizSet["Author"] as? String)
        
        return cell
    }
    // End of required functions
    
    @IBAction func onLogoutButtonRight(_ sender: Any) {
        
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewControllers = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return}
        
        delegate.window?.rootViewController = loginViewControllers
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
