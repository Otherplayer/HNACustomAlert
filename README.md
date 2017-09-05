# HNACustomAlert

![image](https://github.com/Otherplayer/HNACustomAlert/raw/master/WX20170905.png)


```
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
```
