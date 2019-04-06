//
//  CardapioViewController.swift
//  iAppTeste
//
//  Created by Aluno on 22/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class CardapioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let baseDados = BaseDados()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return baseDados.cardapio.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return baseDados.retornaSecao(numero: section)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baseDados.itensCardapio[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let novaCelula = tableView.dequeueReusableCell(withIdentifier: "celula") as! CellController
        
        novaCelula.vrImageView.image = UIImage(named: baseDados.retornaItemSecao(secao: indexPath.section, linha: indexPath.row))
        novaCelula.vrLabel.text = baseDados.retornaItemSecao(secao: indexPath.section, linha: indexPath.row)
        
        return novaCelula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.section)\(indexPath.row)")
        
        let proxTela = storyboard?.instantiateViewController(withIdentifier: "detalheCardapio") as! DetalheCardapioViewController
        
        proxTela.produto = baseDados.retornaItemSecao(secao: indexPath.section, linha: indexPath.row)
        
        navigationController?.pushViewController(proxTela, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
