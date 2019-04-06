//
//  PersistenceManager.swift
//  iAppTeste
//
//  Created by Arthur Santos on 05/04/19.
//  Copyright © 2019 fernando. All rights reserved.
//

import Foundation

class PersistenceManager: NSObject
{
    class func save(value:Bool) {
        let defaults = UserDefaults.standard
        defaults.set (value, forKey: "notification")
    }
    
    class func getValue()->Bool {
        let defaults = UserDefaults.standard
        let value = defaults.bool(forKey: "notification")
        return value
    }
}
