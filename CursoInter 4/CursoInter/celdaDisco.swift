//
//  celdaDisco.swift
//  CursoInter
//
//  Created by Sánchez on 19/01/23.
//

import UIKit

class celdaDisco: UITableViewCell {

    @IBOutlet weak var lblAritsta: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgFoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
