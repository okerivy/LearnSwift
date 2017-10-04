//
//  ViewController.swift
//  LearnSwift
//
//  Created by okerivy on 2017/10/4.
//  Copyright © 2017年 okerivy. All rights reserved.
//

import UIKit

// lihui_MARK: OC 和 swift的区别
/**
 1, 对象方法是 类名() 等价于 alloc / init UIView(frame:)
 
 2, 类方法 是   类名.方法  UIColor.red
 
 3, 访问当前对象的属性, 可以不使用`self.`
     建议: 都不用, 在编译器提示的时候再添加, 会对语境有更好的理解
     原因: 因为闭包 中需要 self.
 
 4, 没有 分号;  只有写在一行中采用分号
 
 5, 枚举类型 swift 用 .语法
 
 6, 监听方法
     用 #selector 并且方法需要 加上@objc
 
 7, 调试 用 print
 
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 创建一个视图
        let v = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        // 设置背景颜色
        v.backgroundColor = UIColor.red
        // color + 回车
        v.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1)
        
        // 添加到视图
        view.addSubview(v)
        // 创建一个按钮
        let btn = UIButton(type: .contactAdd)
        v.addSubview(btn)
        btn.addTarget(self, action: #selector(clickMe(btn:)), for: .touchUpInside)
    }

    @objc func clickMe(btn: UIButton) -> () {
        print("点击我")
        print(btn)
        print(#function)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

