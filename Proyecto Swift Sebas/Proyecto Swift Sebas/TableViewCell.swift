//
//  TableViewCell.swift
//  Proyecto Swift Sebas
//
//  Created by Laboratorio UNAM-17 on 16/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imgvideojuegos: UIImageView!
    
    @IBOutlet weak var lbNombre: UILabel!
    
    
    @IBOutlet weak var lbCosto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
