//
//  TerceiraTelaViewController.swift
//  iAppTeste
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class TerceiraTelaViewController: UIViewController {

    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    
    @IBOutlet weak var vrIMC: UILabel!
    
    @IBAction func calcularIMC(_ sender: Any) {
        let peso:Float = (tfPeso.text! as NSString).floatValue
        let altura:Float = (tfAltura.text! as NSString).floatValue
        let imc:Float = peso / (altura*altura)
        vrIMC.text = "\(imc)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfPeso.resignFirstResponder()
        tfAltura.resignFirstResponder()
        vrIMC.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
