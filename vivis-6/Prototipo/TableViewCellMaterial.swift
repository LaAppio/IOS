//
//  TableViewCellMaterial.swift
//  Prototipo
//
//  Created by UNAM FCA 07 on 20/10/22.
//

import UIKit

class TableViewCellMaterial: UITableViewCell {
    
    @IBOutlet weak var LabelUnidades: UILabel!
    
    @IBOutlet weak var LabelNombreDeUnidad: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
