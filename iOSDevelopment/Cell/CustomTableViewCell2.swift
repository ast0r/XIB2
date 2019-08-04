//
//  CustomTableViewCell2.swift
//  iOSDevelopment
//
//  Created by Pavel Ivanov on 3/11/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

class CustomTableViewCell2: UITableViewCell {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.lbTitle.text = ""
        self.lbDesc.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit(info:InfoStruct, color: UIColor) {
    
        
        self.lbTitle.text = info.title
        self.lbDesc.text = info.desc
        self.contentView.backgroundColor = color
    }
    
}
