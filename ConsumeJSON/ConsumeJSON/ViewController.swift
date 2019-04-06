//
//  ViewController.swift
//  ConsumeJSON
//
//  Created by Arthur Santos on 05/04/19.
//  Copyright © 2019 Arthur Santos. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController, UITableViewDataSource {
    
    var company: Company!
    
    @IBOutlet weak var vrTableView: UITableView!
    func parseJSON() {
        Alamofire.request("http://silvanomalfattiml.000webhostapp.comm/cardapio.json").responseJSON{
            response in
            
            if let json = response.result.value as? [String:Any]
            {
                if let companyName = json["company_name"] as? String,
                    let address = json["address"] as? String,
                    let latitude = json["latitude"] as? NSString,
                    let longitude = json["longitude"] as? NSString,
                    let listItens = json["listItens"] as? [[String:Any]] {
                    
                    var company = Company(companyName: companyName,
                                          address: address,
                                          latitude: latitude.doubleValue,
                                          longitude: longitude.doubleValue)
                    
                    for item in listItens{
                        if let classification = item["classification"] as? NSString,
                        let image = item["image"] as? String,
                            let itemName = item["itemName"] as? String{
                            let novoItem = Item(classification: classification.integerValue, image: image, itemName: itemName)
                            
                            company.listItens.append(novoItem)
                        }
                        
                    self.company = company
                    }
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let company = self.company{
            return company.listItens.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        vrTableView.dequeueReusableCell(withIdentifier: "cell") as! StarCell
        let item = company.listItens[indexPath.row]
        
        cell.vrLabel.text = item.itemName
        
        cell.vrStar1.isHighlighted = false
        cell.vrStar2.isHighlighted = false
        cell.vrStar3.isHighlighted = false
        
        if item.classification >= 1 {
            cell.vrStar1.isHighlighted = true
        }
        if item.classification >= 2 {
            cell.vrStar2.isHighlighted = true
        }
        if item.classification >= 3 {
            cell.vrStar3.isHighlighted = true
        }
        
        cell.selectionStyle = .none
        
        let remoteImageUrl = URL(string: (item.image))!
        
        cell.vrItemImage.af_setImage(withURL: remoteImageUrl)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
