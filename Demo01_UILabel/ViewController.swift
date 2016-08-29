//
//  ViewController.swift
//  Demo01_UILabel
//
//  Created by Zorn on 16/8/29.
//  Copyright © 2016年 任大树. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建label
        let artLabel: UILabel = UILabel(frame: CGRectMake(100,100,100,100))
        
        //设置背景颜色
        artLabel.backgroundColor = UIColor.redColor()//第一种
        artLabel.backgroundColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)//第二种
        //添加到视图
        self.view.addSubview(artLabel)
        
        
        //设置tag值
        artLabel.tag = 51
        //通过tag值获取
        self.view.viewWithTag(51) as! UILabel
        //设置文本
        artLabel.text = "愿你的生命有够多的云翳，造成一个美丽的黄昏。"
        //设置文本颜色
        artLabel.textColor = UIColor.lightGrayColor()
        //设置字体
        artLabel.font = UIFont.systemFontOfSize(16)//第一种
        artLabel.font = UIFont(name: "Helvetica_Bold", size: 16)//第二种
        
        /*
         阴影颜色及其显示范围
         
         /*
         发现和大小
         (0,-1)上
         (0,1)下
         (-1,0)左
         (1,0)右
         */
         
         总结：CGSizeMake(x,y)
         x代表左右,y代表上下
         
         */
        artLabel.shadowColor = UIColor.yellowColor()
        artLabel.shadowOffset = CGSizeMake(2, 2)
        
        //设置文本对齐方式
        /*
         Left: 左对齐
         Right: 右对齐
         Center: 居中
         Justified: 最后一行自然对齐
         Natural: 默认对齐脚本
         */
        artLabel.textAlignment = .Left
        
        //交互，默认是false
        artLabel.userInteractionEnabled = true
        //可变,默认是true
        artLabel.enabled = false
        //行数，设置为0代表无限制的意思
        artLabel.numberOfLines = 0
        //最小字体，默认是0.0
//        artLabel.minimumScaleFactor = 10.0
        
        //设置高亮（默认是falue），及其颜色
        artLabel.highlighted = true
        artLabel.highlightedTextColor = UIColor.blueColor()
        
        /*
         .ByWordWrapping   以空格为界限保留单词
         .ByCharWrapping   保留整个字符
         .ByClipping       简单裁剪，到界为止
         .ByTruncatingHead   切断头部，按"...结尾"显示
         .ByTruncatingTail   切断尾巴，按"开头..."显示
         .ByTruncatingMiddle   切断中间，按"开头...结尾"显示
         */
//        artLabel.lineBreakMode = .ByCharWrapping
        artLabel.adjustsFontSizeToFitWidth = true
        
        
        //富文本设置
        /**
         @param NSMakeRange(0,3) 0是起始位置，3是长度
         */
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "超人爱睡觉看夏洛克逛博客写文章运动打球打游戏啊啊啊啊啊")
        //设置字体
        attributeString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold",size: 26)!, range: NSMakeRange(0,3))
        //设置字体颜色
        attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(0, 3))
        //设置背景颜色
        attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellowColor(), range: NSMakeRange(3, 3))
        artLabel.numberOfLines = 0
        artLabel.attributedText = attributeString
        
        
        artLabel.baselineAdjustment = .AlignCenters//没什么变化
    
        /**
         UILabel自适应高度
         
         @param CGFLOAT_MAX 无限大
         @param NSStringDrawingUsesLineFragmentOrigin 绘制文本使用
         */
        let size = (artLabel.text! as NSString).boundingRectWithSize(CGSizeMake(100, CGFloat.max), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName : UIFont.systemFontOfSize(16)], context: nil)
        artLabel.frame = CGRectMake(100, 100, size.width, size.height)
 
    }
    


}

