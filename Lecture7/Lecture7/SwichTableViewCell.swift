//
//  swichTableViewCell.swift
//  Lecture7
//
//  Created by Slava Utyuzh on 25.05.2018.
//  Copyright © 2018 Slava Utyuzh. All rights reserved.
//

import UIKit

class SwichTableViewCell: UITableViewCell {

    @IBOutlet weak var switchValue: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
