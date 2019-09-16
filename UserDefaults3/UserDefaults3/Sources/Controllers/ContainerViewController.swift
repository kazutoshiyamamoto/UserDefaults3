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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 現在時刻を保存
        let currentTime = DateTime().fetchCurrentTime()
        let defaults = UserDefaults.standard
        defaults.set(currentTime, forKey: UserDefaultConst.currentTime)
    }
}
