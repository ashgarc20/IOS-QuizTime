//
//  QuizSetCell.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/13/22.
//

import UIKit

class QuizSetCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var quizSetNameLabel: UILabel!
    @IBOutlet weak var quizSetDesLabel: UILabel!
    
    // End of Outlets

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // Action Outlets
    @IBAction func quizSetEditButton(_ sender: Any) {
    }
    
    // End of Action Outlets

}
