//
//  HabitTableViewCell.swift
//  habittracker
//
//  Created by Joseph Jackson on 17/06/2018.
//  Copyright © 2018 YoheffYohansen. All rights reserved.
//

import UIKit

class HabitTableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
