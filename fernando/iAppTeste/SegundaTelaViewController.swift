//
//  SegundaTelaViewController.swift
//  iAppTeste
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class SegundaTelaViewController: UIViewController {

    @IBOutlet weak var vrCampoTexto: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        vrCampoTexto.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("-> TELA 2 CARREGADA")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("-> TELA 2 ESTÁ VISÍVEL EM BREVE")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("-> TELA 2 JÁ ESTÁ VISÍVEL AO USUÁRIO")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("-> TELA 2 DESAPARECERÁ EM BREVE")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("-> TELA 2 JÁ DESAPARECEU")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func voltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
