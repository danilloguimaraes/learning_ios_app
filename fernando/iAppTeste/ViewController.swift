//
//  ViewController.swift
//  iAppTeste
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

// classe que controla a lógica e estado de uma tela
// Provavelmente uma ViewController para cada tela
class ViewController: UIViewController {

    // Modificar Outlet/Action no controller, tem que modificar na View tbm
    @IBOutlet weak var vrLabel: UILabel!
    
    @IBAction func alteraTexto(_ sender: Any) {
        vrLabel.text = "Alo Mundo"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TELA 1 CARREGADA")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("TELA 1 ESTÁ VISÍVEL EM BREVE")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("TELA 1 JÁ ESTÁ VISÍVEL AO USUÁRIO")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("TELA 1 DESAPARECERÁ EM BREVE")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("TELA 1 JÁ DESAPARECEU")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

