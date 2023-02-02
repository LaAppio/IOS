//
//  TableViewControllerNiveles.swift
//  Prototipo
//
//  Created by UNAM FCA 07 on 20/10/22.
//

import UIKit

struct Unidades {
    
    var NumberUnit : String
    var Title : String
    var UnitTopic : String
    var ListeningandReading: String
    var SpeakingandWriting : String
    var Grammarandvocabulary : String
}

    
class TableViewControllerNiveles: UITableViewController {

    var listaUnidades : [Unidades] = [
    
    Unidades(NumberUnit: "Unit 1", Title: "Hello!", UnitTopic: "Greetings", ListeningandReading: "Identifying greetings", SpeakingandWriting: "Exchanging greetings", Grammarandvocabulary: "Verbs"),
    Unidades(NumberUnit: "Unit 2", Title: "Where are you from?", UnitTopic: "Countries", ListeningandReading: "People and their nationalities", SpeakingandWriting: "Describing people, where they live and where they are from", Grammarandvocabulary: "Negative Adverb"),
    Unidades(NumberUnit: "Unit 3", Title: "What do you do?", UnitTopic: "Occupations", ListeningandReading: "Identifying someone`s occupation", SpeakingandWriting: "Asking and answering questions about occupations", Grammarandvocabulary: "Order of sentences"),
    Unidades(NumberUnit: "Unit 4", Title: "He`s so tall!", UnitTopic: "People`s appearances", ListeningandReading: "Understanding information about people`s appearance", SpeakingandWriting: "Describing people`s appearances", Grammarandvocabulary: "Adjectives"),
    

    ]
    var UnidadesSeleccionado: Unidades?
    
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
        return listaUnidades.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CeldaNivel", for: indexPath) as! TableViewCellMaterial
        
        let unidades = listaUnidades [indexPath.row]
        
        cell.LabelUnidades.text = unidades.NumberUnit
        cell.LabelNombreDeUnidad.text = unidades.Title
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UnidadesSeleccionado = listaUnidades [indexPath.row]
        performSegue(withIdentifier: "segueUnidadesMaestroToDetalle", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteVista = segue.destination as! ViewControllerNivelesDetalle
        siguienteVista.UnidadesRecibido = UnidadesSeleccionado
        
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
