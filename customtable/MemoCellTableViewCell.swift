//
//  MemoCellTableViewCell.swift
//  Mymemory
//
//  Created by 정평두 on 2017. 11. 6..
//  Copyright © 2017년 moontomoon. All rights reserved.
//

import UIKit

class MemoCellTableViewCell: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var address: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        print("mmmmmmm2222")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
