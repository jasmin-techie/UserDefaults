//
//  Defaults.swift
//  Demo
//
//  Created by Jasmin Patel on 25/05/17.
//  Copyright © 2017 Jasmin.Patel. All rights reserved.
//

import Foundation
import UIKit

enum Defauls: String {

    // Here you can add your key for defaults
    case isLogged
    case userToken
}

extension Defauls {
    var keyName: String {
        return rawValue
    }
    
    func set(_ value: Any) {
        UserDefaults.standard.set(value, forKey: keyName)
        UserDefaults.standard.synchronize()
    }
    
    var value: Any? {
        
        return UserDefaults.standard.value(forKey: keyName)
    }
}

// Use

// set vakue

   // Defauls.isLogged.set(true)
   // Defauls.userToken.set("user token string")

// get value

   // guard let isLogged = Defauls.isLogged.value as? Bool,
   //         let userToken = Defauls.userToken.value as? String else { return }
    
   // print(isLogged) // true
   // print(userToken) // "user token string"

