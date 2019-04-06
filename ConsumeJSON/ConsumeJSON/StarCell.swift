//
//  StarCellTableViewCell.swift
//  ConsumeJSON
//
//  Created by Arthur Santos on 06/04/19.
//  Copyright © 2019 Arthur Santos. All rights reserved.
//

import UIKit

class StarCell: UITableViewCell {

    @IBOutlet weak var vrItemImage: UIImageView!
    @IBOutlet weak var vrLabel: UILabel!
    @IBOutlet weak var vrStar1: UIImageView!
    @IBOutlet weak var vrStar2: UIImageView!
    @IBOutlet weak var vrStar3: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
