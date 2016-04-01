//
//  SecViewController.swift
//  协议语法
//
//  Created by zjwang on 16/4/1.
//  Copyright © 2016年 Xsummerybc. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    var textField = UITextField()
    var button = UIButton()
    var delegate : ModeViewControlDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
        
        button = UIButton.init(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 200, 30)
        self.view.addSubview(button)
        button.setTitle("button", forState: UIControlState.Normal)
        button.addTarget(self, action: "click", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.cyanColor()
        
        textField = UITextField.init(frame: CGRectMake(100, 140, 200, 30))
        textField.backgroundColor = UIColor.lightGrayColor()
        textField.text = "success"
        self.view.addSubview(textField)
        
    }
    func click()->Void{
        let str = textField.text
        self.delegate?.changeLabelString(str!)
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
