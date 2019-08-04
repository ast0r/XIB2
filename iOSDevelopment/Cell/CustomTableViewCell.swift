//
//  CustomTableViewCell.swift
//  iOSDevelopment
//
//  Created by Pavel Ivanov on 3/11/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLable: UILabel!
    
    override func awakeFromNib() {
        super .awakeFromNib()
        
        self.titleLabel.text = ""
        self.descLable.text = ""
    }
    
   
    class func reuseIdentifierCellCustom() -> String {
        
        return "Cell"
    }
    
    func customInit(info:InfoStruct) {
        self.titleLabel.backgroundColor = .yellow
        self.titleLabel.text = info.title
        self.descLable.text = info.desc
    }

}
