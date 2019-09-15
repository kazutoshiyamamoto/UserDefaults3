//
//  ViewController.swift
//  UserDefaults3
//
//  Created by home on 2018/04/24.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 現在時刻を保存
        let dateFormatter =  DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ja_JP")
        let now = Date()
        
        let defaults = UserDefaults.standard
        defaults.set(dateFormatter.string(from: now), forKey: "currentTime")
    }
}

