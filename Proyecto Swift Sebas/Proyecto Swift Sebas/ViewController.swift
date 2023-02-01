//
//  ViewController.swift
//  Proyecto Swift Sebas
//
//  Created by Laboratorio UNAM-17 on 03/11/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lbdetalle: UILabel!
    @IBOutlet weak var imgdetalle: UIImageView!
    
    var videojuegosRecibido : Videojuegos?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imgImagenRecibida = videojuegosRecibido?.foto, let lbTextoRecibido = videojuegosRecibido?.nombre {         
            imgdetalle.image = imgImagenRecibida
            lbdetalle.text = lbTextoRecibido
        }
        
/*
        imgdetalle.image = videojuegosRecibido?.foto
        lbdetalle.text = videojuegosRecibido?.nombre
        lbdetalle2.text = videojuegosRecibido?.nombre
  */
        // Do any additional setup after loading the view.
    }


}

