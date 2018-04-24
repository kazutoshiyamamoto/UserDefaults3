//
//  ViewController.swift
//  UserDefaults3
//
//  Created by home on 2018/04/24.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func getList(_ sender: Any) {
        // ユーザーデフォルトを参照する
        let defaults = UserDefaults.standard
        // キー"myList"の値を配列として読み込む
        if let theList = defaults.array(forKey: "myList") {
            print(theList)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  配列を作る
        let list = [1,2,3]
        // ユーザーデフォルトを参照する
        let defaults = UserDefaults.standard
        // 配列listをキー"myList"で保存する
        defaults.set(list, forKey: "myList")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

