//
//  TheRangers.swift
//  rescue-rangers-UITableView
//
//  Created by Jonathan Wood on 9/14/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class RangersCell: UITableViewCell {

    @IBOutlet weak var charImg: UIImageView!
    @IBOutlet weak var charLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        charImg.layer.cornerRadius = 5.0
        charImg.clipsToBounds = true
        
    }
    
    func configureCell(image:UIImage, text:String) {
        charImg.image = image
        charLbl.text = text
    }
    
}
