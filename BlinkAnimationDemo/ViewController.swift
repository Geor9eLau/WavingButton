//
//  ViewController.swift
//  BlinkAnimationDemo
//
//  Created by George on 2016/12/20.
//  Copyright © 2016年 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let testBtn = UIButton(frame: CGRect(x: 100, y: 200, width: 80, height: 80))
        testBtn.layer.cornerRadius = 40
        testBtn.setTitle("Test", for: .normal)
        testBtn.backgroundColor = UIColor.blue
        testBtn.addWavingEffect()
        view.addSubview(testBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

