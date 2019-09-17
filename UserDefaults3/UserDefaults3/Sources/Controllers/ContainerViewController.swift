//
//  ContainerViewController.swift
//  UserDefaults3
//
//  Created by home on 2019/09/16.
//  Copyright © 2019 Swift-beginners. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    //    let notificationObserver = NotificationObserver()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.notificationObserver.addObserver()
        self.addObserver()
        
        // 現在時刻を保存
        let currentTime = DateTime().fetchCurrentTime()
        let defaults = UserDefaults.standard
        defaults.set(currentTime, forKey: UserDefaultConst.currentTime)
    }
    
    private func addObserver() {
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(type(of: self).notified(notification:)), name: .UIApplicationDidBecomeActive, object: nil)
        print("通知を登録")
    }
    
    @objc private func notified(notification: Notification) {
        // 現在時刻を取得
        let currentTime = DateTime().fetchCurrentTime()
        print("現在時刻を取得\(currentTime)")
        // 前回保存した時刻を呼び出す
        let defaults = UserDefaults.standard
        guard let lastSavedTime = defaults.string(forKey: UserDefaultConst.currentTime) else {
            print("処理を中断")
            return
        }
        print("前回保存した時刻を取得\(lastSavedTime)")
        if currentTime > lastSavedTime {
            self.button.isHidden = false
        }
    }
}
