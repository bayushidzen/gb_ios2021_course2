//
//  FriendsCell.swift
//  Lesson2_1
//
//  Created by Dzen on 17.10.2021.
//

import UIKit

class FriendsCell: UITableViewCell{
    @IBOutlet weak var FriendName: UILabel!
    @IBOutlet var FriendsAvatar: UIImage!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
