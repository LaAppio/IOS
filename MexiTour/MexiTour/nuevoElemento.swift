//
//  nuevoElemento.swift
//  MexiTour
//
//  Created by UNAM-Apple15 on 25/01/23.
//

import UIKit

class nuevoElemento: UIViewController {

    @IBOutlet weak var txttiempo: UITextField!
    
    @IBOutlet weak var txtpresupuesto: UITextField!
    
    @IBOutlet weak var txtplan: UITextField!
    
    @IBOutlet weak var txtpersona: UITextField!
    
    var nuevoPlan:Plan=Plan(tiempo: "", plan: "", presupuesto: "", persona: "", imagen: UIImage(systemName: "person.3.sequence")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardar(_ sender: Any) {
        
        nuevoPlan.tiempo=txttiempo.text!
        nuevoPlan.presupuesto=txtpresupuesto.text!
        nuevoPlan.plan=txtplan.text!
        nuevoPlan.persona=txtpersona.text!
        arregloPlanes.append(nuevoPlan)
        
    }
    
  
    }
    


