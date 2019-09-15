//
//  DateTimeManeger.swift
//  UserDefaults3
//
//  Created by home on 2019/09/15.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import Foundation

class DateTimeManeger: NSObject {
    // 現在時刻を保存
    func saveCurrentTime() {
        let dateFormatter =  DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ja_JP")
        let now = Date()
        
        let defaults = UserDefaults.standard
        defaults.set(dateFormatter.string(from: now), forKey: "currentTime")
    }
}
