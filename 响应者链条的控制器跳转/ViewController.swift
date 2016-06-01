//
//  ViewController.swift
//  响应者链条的控制器跳转
//
//  Created by Mac on 16/6/1.
//  Copyright © 2016年 www.ZXZ123.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "测试响应者链条"

        view.addSubview(subView)
    }

    lazy var subView = ZXZView(frame: UIScreen.mainScreen().bounds)

}

