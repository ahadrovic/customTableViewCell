//
//  CustomTableViewCell.swift
//  customTableViewCell
//
//  Created by Adem Hadrovic on 3/31/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var animalLbl: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
