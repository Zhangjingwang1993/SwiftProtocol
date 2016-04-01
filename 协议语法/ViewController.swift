//
//  ViewController.swift
//  协议语法
//
//  Created by zjwang on 16/4/1.
//  Copyright © 2016年 Xsummerybc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ModeViewControlDelegate{

    var button = UIButton()
    var label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let generator = LinearCongruentialGenerator()
        generator.random()
        // 打印随机数
        print("here's a random number: \(generator.random())")
        
        
        let d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
        for _ in 1...5{
            print("Random dice roll is \(d6.roll())")
        }
        
        
        let tracker = DiceGameTracker()
        let game = SnakesAndLadders()
        game.delegate = tracker
        game.play()
        
        button = UIButton.init(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 200, 30)
        self.view.addSubview(button)
        button.setTitle("button", forState: UIControlState.Normal)
        button.addTarget(self, action: "click", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.cyanColor()
        
        label = UILabel.init(frame: CGRectMake(100, 140, 200, 30))
        label.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(label)
        
        
    }
    // 实现协议中的方法
    func changeLabelString(newString: String) {
        
        label.text = "labeltext:\(newString)"
        print(newString)
    }
    func click()->Void
    {
        print("-------")
        let sec = SecViewController();
        sec.delegate = self
        self.presentViewController(sec, animated: true) { () -> Void in
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

