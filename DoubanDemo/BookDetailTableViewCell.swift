//
//  BookDetailTableViewCell.swift
//  DoubanDemo
//
//  Created by 庄鸣真 on 2016/10/17.
//  Copyright © 2016年 Frank Zhuang. All rights reserved.
//

import UIKit

class BookDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var imgBook: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
