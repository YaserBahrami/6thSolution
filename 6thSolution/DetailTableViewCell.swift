//
//  DetailTableViewCell.swift
//  6thSolution
//
//  Created by yaser on 10/27/18.
//  Copyright © 2018 Barsam. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var detailButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        detailButton.layer.cornerRadius = CGFloat(detailButton.frame.height / 3)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
