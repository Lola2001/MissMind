//
//  IgracCell.swift
//  Skocko1
//
//  Created by Lola on 21.12.22..
//

import UIKit

class IgracCell: UITableViewCell {
    
    
    @IBOutlet weak var id: UILabel!
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    
    @IBOutlet weak var line: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
