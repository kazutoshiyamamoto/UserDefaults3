//
//  ViewController.swift
//  UserDefaults3
//
//  Created by home on 2018/04/24.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 現在時刻を保存
        let currentTime = DateTime().fetchCurrentTime()
        let defaults = UserDefaults.standard
        defaults.set(currentTime, forKey: UserDefaultConst.currentTime)
    }
}

