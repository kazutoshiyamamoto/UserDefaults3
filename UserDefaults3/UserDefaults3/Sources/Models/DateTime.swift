//
//  DateTimeManeger.swift
//  UserDefaults3
//
//  Created by home on 2019/09/15.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import Foundation

class DateTime: NSObject {
    
    func fetchCurrentTime() -> String {
        let dateFormatter =  DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ja_JP")
        let currentTime = dateFormatter.string(from: Date())
        
        return currentTime
    }
}
