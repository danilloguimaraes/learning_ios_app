//
//  LoginViewController.swift
//  iAppTeste
//
//  Created by Aluno on 05/04/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfLogin: UITextField!
    @IBOutlet weak var tfSenha: UITextField!
    @IBAction func btnEntrar(_ sender: UIButton) {
        if(tfLogin.text == "asdf" && tfSenha.text == "1234"){
            let viewControllerTab = storyboard!.instantiateViewController(withIdentifier: "stryIdTabBar") as! UITabBarController
            self.present(viewControllerTab, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Atenção", message: "Usuário ou senha Inválidos", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
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
