//
//  BlinkAnimation.swift
//  BlinkAnimationDemo
//
//  Created by George on 2016/12/20.
//  Copyright © 2016年 George. All rights reserved.
//

import UIKit

extension UIButton: CAAnimationDelegate{
    func addWavingEffect() {
        self.layer.masksToBounds = false
        let btnWidth = self.frame.size.width
        let btnHeight = self.frame.size.height
        let cornerRadius = btnHeight / 2.0
        
        
        
        for i in 0 ..< 5 {
            
            let tmpLayer = CAShapeLayer()
            tmpLayer.backgroundColor = self.backgroundColor?.cgColor
            tmpLayer.cornerRadius = cornerRadius
            tmpLayer.frame = CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight)
            
            let largenAnimation = CABasicAnimation(keyPath: "transform.scale")
            largenAnimation.fromValue = 1
            largenAnimation.toValue = 1.5
            largenAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            largenAnimation.isRemovedOnCompletion = false
            largenAnimation.repeatCount = MAXFLOAT
            largenAnimation.duration = 3.0
            largenAnimation.beginTime = CFTimeInterval(Float(i) * 3.0 / 5)
            largenAnimation.delegate = self
            tmpLayer.add(largenAnimation, forKey: "largen")
            
            
            let fadeAnimation = CABasicAnimation(keyPath: "opacity")
            fadeAnimation.fromValue = 0.8
            fadeAnimation.toValue = 0
            fadeAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            fadeAnimation.isRemovedOnCompletion = false
            fadeAnimation.repeatCount = MAXFLOAT
            fadeAnimation.duration = 3.0
            fadeAnimation.beginTime = CFTimeInterval(Float(i) * 3.0 / 5)
            fadeAnimation.delegate = self
            
            tmpLayer.add(fadeAnimation, forKey: "fade")

            self.layer.addSublayer(tmpLayer)
        }
    }
}
