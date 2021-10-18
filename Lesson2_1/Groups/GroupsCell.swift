//
//  GroupsCell.swift
//  Lesson2_1
//
//  Created by Dzen on 18.10.2021.
//

import UIKit

class GroupsCell: UITableViewCell{
    @IBOutlet weak var GroupName: UILabel!
    @IBOutlet var GroupLogo: UIImage!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
