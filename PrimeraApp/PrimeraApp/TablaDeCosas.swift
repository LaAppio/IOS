//
//  TablaDeCosas.swift
//  PrimeraApp
//
//  Created by Sánchez on 31/08/22.
//

import UIKit

class TablaDeCosas: UIViewController {

    @IBOutlet weak var lblTexto: UILabel!
    
    
    
    //sin esta funcion, no sirve la pantalla
    //carga todos los componentes que tienes
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btCambiar(_ sender: UIButton) {
        
        if lblTexto.text == "Primer texto" {
            
            lblTexto.text = "Segundo texto"
            
        } else {
            
            lblTexto.text = "Primer texto"
        
        }
            
        
        
        
        
    }
    

    

}
