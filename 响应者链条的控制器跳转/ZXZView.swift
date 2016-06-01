//
//  ZXZView.swift
//  响应者链条的控制器跳转
//
//  Created by Mac on 16/6/1.
//  Copyright © 2016年 www.ZXZ123.com. All rights reserved.
//

import UIKit

class ZXZView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.grayColor()

        let  btn = UIButton(type: UIButtonType.Custom)
        btn.frame = CGRectMake(100, 100, 100, 100)

        btn.setTitle("点我点我", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)
        btn.addTarget(self, action: #selector(ZXZView.switchNextController), forControlEvents: UIControlEvents.TouchUpInside)
        addSubview(btn)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    @objc private func switchNextController(){
        let  targetVc = ZXZTargetViewController()
        self.findNavController()?.pushViewController(targetVc, animated: true)

    }

}
