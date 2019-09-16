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
        center.addObserver(self, selector: #selector(notified(notification:)), name: .UIApplicationDidBecomeActive, object: nil)
    }
    
    @objc private func notified(notification: Notification) {
        print("呼ばれた")
    }
}
