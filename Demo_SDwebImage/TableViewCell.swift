//
//  TableViewCell.swift
//  Demo_SDwebImage
//
//  Created by Bui Van Tuan on 7/2/19.
//  Copyright © 2019 Nguyen khac vu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imagecell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
