//
//  NotificationObserver.swift
//  UserDefaults3
//
//  Created by home on 2019/09/16.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import Foundation

class NotificationObserver: NSObject {
    func addObserver() {
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(type(of: self).notified(notification:)), name: .UIApplicationDidBecomeActive, object: nil)
        print("通知を登録")
    }
    
    @objc private func notified(notification: Notification) {
        print("呼ばれた\(notification)")
    }
}
