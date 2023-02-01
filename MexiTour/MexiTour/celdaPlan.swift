
import UIKit

class celdaPlan: UITableViewCell {

    @IBOutlet weak var lblPersona: UILabel!
    @IBOutlet weak var imgSorpresa: UIImageView!
    @IBOutlet weak var lblPlan: UILabel!
    @IBOutlet weak var lblPresupuesto: UILabel!
    @IBOutlet weak var lblTiempo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
