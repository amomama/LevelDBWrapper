//
//  ViewController.swift
//  Example
//
//  Created by Ivan Sinitsa on 8/4/19.
//  Copyright © 2019 Ivan Sinitsa. All rights reserved.
//

import UIKit
import LevelDBWrapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var db: APLevelDB? = nil

        let filePath = NSHomeDirectory() + "/Documents/" + "database"
        if let database = try? APLevelDB(path: filePath) {
            db = database
        }

        for i in 0..<10000 {
            db?.setString("test\(i)", forKey: "key\(i)")
        }
        print("2")

        let value = db?["key1"]
        print("value \(value)")
    }

    


}

