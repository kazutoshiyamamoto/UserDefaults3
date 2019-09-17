//
//  NotificationObserver.swift
//  UserDefaults3
//
//  Created by home on 2019/09/16.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import Foundation

class NotificationObserver: NSObject {
//    func addObserver() {
//        let center = NotificationCenter.default
//        center.addObserver(self, selector: #selector(type(of: self).notified(notification:)), name: .UIApplicationDidBecomeActive, object: nil)
//        print("通知を登録")
//    }
//    
//    @objc private func notified(notification: Notification) {
//        // 現在時刻を取得
//        let currentTime = DateTime().fetchCurrentTime()
//        print("現在時刻を取得\(currentTime)")
//        // 前回保存した時刻を呼び出す
//        let defaults = UserDefaults.standard
//        guard let lastSavedTime = defaults.string(forKey: UserDefaultConst.currentTime) else {
//            print("処理を中断")
//            return
//        }
//        print("前回保存した時刻を取得\(lastSavedTime)")
//        if currentTime >= lastSavedTime {
//            ContainerViewController().button.isHidden = false
//        }
//    }
//}
