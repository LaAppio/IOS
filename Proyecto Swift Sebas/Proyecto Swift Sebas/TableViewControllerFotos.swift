//
//  TableViewControllerFotos.swift
//  Proyecto Swift Sebas
//
//  Created by Laboratorio UNAM-17 on 10/11/22.
//

import UIKit

struct Videojuegos{
    var nombre : String
    var foto : UIImage
    var costo : String
    
}

class TableViewControllerFotos: UITableViewController {
    
    var videojuegoSeleccionado : Videojuegos?
    
    var arregloVideojuegos : [Videojuegos] = [
        
        Videojuegos(nombre: "God of War Ragnarok", foto: UIImage(named: "godofwar")!, costo: "$1,600"),
        Videojuegos(nombre: "Spiderman", foto: UIImage(named: "spiderman")!, costo: "$749"),
        Videojuegos(nombre: "Horizon", foto: UIImage(named: "horizon")!, costo: "$1,500"),
        Videojuegos(nombre: "Halo Infinite", foto: UIImage(named: "halo")!, costo: "$1,150"),
        Videojuegos(nombre: "Gears of War", foto: UIImage(named: "gearsofwar")!, costo: "$410"),
        Videojuegos(nombre: "Forza", foto: UIImage(named: "forza")!, costo: "$1,600")
        
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  arregloVideojuegos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell
        
        let videojuegos = arregloVideojuegos[indexPath.row]
        
        cell.lbNombre.text = videojuegos.nombre
        cell.imgvideojuegos.image = videojuegos.foto
        cell.lbCosto.text = videojuegos.costo

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        videojuegoSeleccionado = arregloVideojuegos[indexPath.row]
        performSegue(withIdentifier: "segueDetalle", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteVista = segue.destination as! ViewController
        
        if segue.identifier == "segueDetalle" {
        siguienteVista.videojuegosRecibido = videojuegoSeleccionado
        }
        
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
