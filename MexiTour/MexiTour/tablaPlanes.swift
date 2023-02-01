
import UIKit

struct Plan{
    var tiempo : String
    var plan : String
    var presupuesto : String
    var persona : String
    var imagen : UIImage
    
}
var arregloPlanes: [Plan]=[
    Plan (tiempo: "cinco", plan: "Entretenimiento", presupuesto: "$1,650.00", persona: "4", imagen: UIImage(named: "ParqueDD")!), Plan(tiempo: "una", plan: "Descansar", presupuesto: "$200.00", persona: "2", imagen:UIImage(named: "Relax")!), Plan(tiempo: "dos", plan: "Entretenimiento", presupuesto: "$500.00", persona: "3", imagen:UIImage(named: "cine")!), Plan (tiempo: "hora y media", plan: "Comer", presupuesto: "$250.00", persona: "2", imagen:UIImage(named: "tacos")!)
]

class tablaPlanes: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tbPlan: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbPlan.dataSource=self
        tbPlan.delegate=self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloPlanes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tbPlan.dequeueReusableCell(withIdentifier: "Celda :)", for: indexPath) as! celdaPlan
        let celdaReusada = arregloPlanes [indexPath.row]
        
        celda.imgSorpresa.image=celdaReusada.imagen
        celda.lblTiempo.text=celdaReusada.tiempo
        celda.lblPlan.text=celdaReusada.plan
        celda.lblPresupuesto.text=celdaReusada.presupuesto
        celda.lblPersona.text=celdaReusada.persona
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tbPlan.reloadData()
    }

}
