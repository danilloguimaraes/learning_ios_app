//
//  Item.swift
//  ConsumeJSON
//
//  Created by Arthur Santos on 05/04/19.
//  Copyright © 2019 Arthur Santos. All rights reserved.
//

import UIKit

class Item: NSObject {

    var classification: Int
    var image: String
    var itemName: String
    
    init(classification: Int, image: String, itemName: String) {
        self.classification =  classification
        self.image = image
        self.itemName = itemName
    }
}
