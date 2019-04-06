//
//  DetalheCardapioViewController.swift
//  iAppTeste
//
//  Created by Aluno on 23/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class DetalheCardapioViewController: UIViewController {
    
    public var produto: String!
    
    
    @IBOutlet weak var imageProduto: UIImageView!
    @IBOutlet weak var labelProduto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelProduto.text = produto
        imageProduto.image = UIImage(named: produto)

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
