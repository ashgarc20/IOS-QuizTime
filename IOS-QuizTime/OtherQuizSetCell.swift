//
//  OtherQuizSetCell.swift
//  IOS-QuizTime
//
//  Created by macOS on 4/26/22.
//

import UIKit

class OtherQuizSetCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var otherQuizSetNameLabel: UILabel!
    @IBOutlet weak var otherQuizSetDescLabel: UILabel!
    @IBOutlet weak var otherAuthorLabel: UILabel!
    // End of Outlets
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
