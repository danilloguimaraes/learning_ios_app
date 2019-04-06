//
//  QuartaTelaViewController.swift
//  iAppTeste
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit

class QuartaTelaViewController: UIViewController {

    @IBOutlet weak var imgUFG: UIImageView!
    @IBOutlet weak var outletSegmented: UISegmentedControl!
    @IBOutlet weak var outletSlider: UISlider!
    
    @IBAction func switchOpcao(_ sender: UISwitch) {
        //imgUFG.isHidden = !sender.isOn
        outletSegmented.isEnabled = sender.isOn
        outletSlider.isEnabled = sender.isOn
    }
    
    @IBAction func segmentedOpcao(_ sender: UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.green
        case 2:
            self.view.backgroundColor = UIColor.purple
        case 3:
            self.view.backgroundColor = UIColor.yellow
        case 4:
            self.view.backgroundColor = UIColor.white
        default:
            self.view.backgroundColor = UIColor.white
        }
            }
    
    @IBAction func sliderOpcao(_ sender: UISlider) {
        self.view.alpha = CGFloat(sender.value)
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
