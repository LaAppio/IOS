//
//  ViewControllerNivelesDetalle.swift
//  Prototipo
//
//  Created by UNAM FCA 07 on 20/10/22.
//

import UIKit

class ViewControllerNivelesDetalle: UIViewController {

    var UnidadesRecibido: Unidades?
    
    @IBOutlet weak var LabelNumberUnit: UILabel!
    @IBOutlet weak var LabelTitle: UILabel!
    @IBOutlet weak var LabelUnitTopic: UILabel!
    @IBOutlet weak var LabelListeningandReading: UILabel!
    
    @IBOutlet weak var LabelSpeakingandWriting: UILabel!
    
    @IBOutlet weak var LabelGrammarandvocabulary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LabelNumberUnit.text = UnidadesRecibido?.NumberUnit
        LabelTitle.text = UnidadesRecibido?.Title
        LabelUnitTopic.text = UnidadesRecibido?.UnitTopic
        LabelListeningandReading.text = UnidadesRecibido?.ListeningandReading
        LabelSpeakingandWriting.text = UnidadesRecibido?.SpeakingandWriting
        LabelGrammarandvocabulary.text = UnidadesRecibido?.Grammarandvocabulary
    
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
