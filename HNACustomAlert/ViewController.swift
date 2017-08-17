//
//  ViewController.swift
//  HNACustomAlert
//
//  Created by __无邪_ on 2017/8/17.
//  Copyright © 2017年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert(_ sender: Any) {
        let controller = HNAAlertController(title: "系统提示",
                                                message: "你好世界 HEllO WORLD？",
                                                preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "ByeBye", style: .cancel, handler: nil)
        let destructiveAction = UIAlertAction.init(title: "好的", style: .destructive, handler: nil)
        let okAction = UIAlertAction(title: "你好", style: .default, handler: {
            action in
            print("点击了确定")
        })
        controller.addAction(cancelAction)
        controller.addAction(destructiveAction)
        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
        
    }
    
}

