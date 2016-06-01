//
//  View+extension.swift
//  响应者链条的控制器跳转
//
//  Created by Mac on 16/6/1.
//  Copyright © 2016年 www.ZXZ123.com. All rights reserved.
//

import UIKit

extension UIView{

    func findNavController() -> UINavigationController?{

        var  next = self.nextResponder()

        while  next != nil {
            if let objData = next as? UINavigationController{

                return objData
            }else{
                next = next?.nextResponder()

            }
        }
        return nil
    }

}


/*
 
 //查找视图对象的响应者链条中的导航视图控制器
 func findNavController() -> UINavigationController? {

 //遍历响应者链条
 var next = self.nextResponder()

 //开始遍历
 while next != nil {
 //判断next 是否是导航视图控制器
 if let nextobj = next as? UINavigationController {
 return nextobj
 }
 //如果不是导航视图控制器 就继续获取下一个响应者的下一个响应者
 next = next?.nextResponder()
 }

 return nil
 }

 */