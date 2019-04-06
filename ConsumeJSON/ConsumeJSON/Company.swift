//
//  Company.swift
//  ConsumeJSON
//
//  Created by Arthur Santos on 05/04/19.
//  Copyright © 2019 Arthur Santos. All rights reserved.
//

import UIKit

class Company: NSObject {
    
    var companyName: String
    var address: String
    var latitude: Double
    var longitude: Double
    var listItens: [Item] = []
    
    init(companyName: String,
        address: String,
        latitude: Double,
        longitude: Double) {
        self.companyName = companyName
        self.address = address
        self.latitude = latitude
        self.longitude = longitude
    }

}
