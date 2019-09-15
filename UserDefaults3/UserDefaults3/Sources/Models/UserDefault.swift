//
//  UserDefault.swift
//  UserDefaults3
//
//  Created by home on 2019/09/15.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import Foundation

class UserDefault: NSObject {
    func saveStringValue(key: String, value: String) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
    }
}
