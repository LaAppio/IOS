
import UIKit

struct Disco{
    var portada:UIImage
    var nombre:String
    var aritsta:String
}

class tablaDiscos: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbDiscos: UITableView!
    var arregloDiscos:[Disco]=[
        Disco(portada: UIImage(named: "MM")!, nombre: "GO:OD AM", aritsta: "Mac Miller"),
        //Hasta aquí nos quedamos en la clase 5
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //code
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //code
    }

    

}
