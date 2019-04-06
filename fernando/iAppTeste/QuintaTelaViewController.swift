//
//  QuintaTelaViewController.swift
//  iAppTeste
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class QuintaTelaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var paradigmas = ["Estruturadas", "Orientadas a Objetos"]
    var linguagens = [["C", "Pascal"], ["Java", "Swift", "C Sharp"]]
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return paradigmas.count;
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component==0){
            return paradigmas.count
        }
        
        return linguagens[pickerView.selectedRow(inComponent: 0)].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return paradigmas[row]
        } else {
            let selecionado = pickerView.selectedRow(inComponent: 0)
            return linguagens[selecionado][row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component==0){
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
            let linhaSelecionada = pickerView.selectedRow(inComponent: 0)
            carregaImagem(nome: linguagens[linhaSelecionada][0])
            return
        }
        
        let linhaSelecionada = pickerView.selectedRow(inComponent: 0)
        carregaImagem(nome: linguagens[linhaSelecionada][row])
    }
    
    // Funcao criada para carregar uma imagem
    @IBOutlet weak var vrImageView: UIImageView!
    private func carregaImagem(nome:String){
        vrImageView.image = UIImage(named: nome)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        carregaImagem(nome: linguagens[0][0])

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
