//
//  HNAAlertController.swift
//  HNACustomAlert
//
//  Created by __无邪_ on 2017/8/17.
//  Copyright © 2017年 __无邪_. All rights reserved.
//

import UIKit


class HNAAlertController: UIAlertController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //标题字体样式（红色，字体放大）
        let titleFont = UIFont.systemFont(ofSize: 20)
        let titleAttribute = NSMutableAttributedString.init(string: self.title!)
        titleAttribute.addAttributes([NSAttributedStringKey.font:titleFont,
                                      NSAttributedStringKey.foregroundColor:UIColor.red],
                                     range:NSMakeRange(0, (self.title?.characters.count)!))
        self.setValue(titleAttribute, forKey: "attributedTitle")
        
        //消息内容样式（灰色斜体）
        let messageFontDescriptor = UIFontDescriptor.init(fontAttributes: [
            UIFontDescriptor.AttributeName.family:"Arial",
            UIFontDescriptor.AttributeName.name:"Arial-ItalicMT",
            ])
        let messageFont = UIFont(descriptor: messageFontDescriptor, size: 13.0)
        let messageAttribute = NSMutableAttributedString.init(string: self.message!)
        messageAttribute.addAttributes([NSAttributedStringKey.font:messageFont,
                                        NSAttributedStringKey.foregroundColor:UIColor.gray],
                                       range:NSMakeRange(0, (self.message?.characters.count)!))
        self.setValue(messageAttribute, forKey: "attributedMessage")
        
        
        
        
        
        
        var count : UInt32 = 0
        var count_method : UInt32 = 0
        var count_property : UInt32 = 0
        var count_protocol : UInt32 = 0
        let ivars = class_copyIvarList(UIAlertController.self, &count)!
        let methods = class_copyMethodList(UIAlertController.self, &count_method)!
        let properties = class_copyPropertyList(UIAlertController.self, &count_property)!
        let protocols = class_copyProtocolList(UIAlertController.self, &count_protocol)!
        for i in 0..<count {
            let ivar = ivars[Int(i)]
            let name = ivar_getName(ivar)
            print("属性" + String(cString: name!))
        }
        print("-------------")
        for i in 0..<count_method {
            let method = methods[Int(i)]
            let name = method_getName(method)
            print("方法：" + name.description)
        }
        print("-------------")
        for i in 0..<count_property {
            let property = properties[Int(i)]
            let name = property_getName(property)
            print("属性：" + String(cString: name))
        }
        print("-------------")
        for i in 0..<count_protocol {
            let pro = protocols[Int(i)]
            let name = protocol_getName(pro)
            print("协议：" + String(cString: name))
        }
        
        
    }
    
    override func addAction(_ action: UIAlertAction) {
        super.addAction(action)
        
        //设置确定按钮图标和样式
        if action.style == .default {
//            //使用图片原来颜色
//            let iconImage = UIImage(named:"tick")?.withRenderingMode(.alwaysOriginal)
//            action.setValue(iconImage, forKey: "image")
            action.setValue(UIColor.green, forKey:"titleTextColor")
            
        }else if  action.style == .cancel {
            action.setValue(UIColor.red, forKey:"titleTextColor")
        }else {
            action.setValue(UIColor.orange, forKey:"titleTextColor")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
