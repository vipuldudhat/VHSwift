//
//  VHViewExtension.swift
//  Pods

     // = = = = = = = = = = = = = = = = = = = = = = = = = = = = = //
    //                                                           //
   //  📍 Created by Vipul Dudhat on 06/10/15. 📌               //
  //  📍 Copyright © 2015 Vipul Dudhat. All rights reserved. 📌//
 //                                                           //
// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = //


import Foundation
import UIKit


extension UIView {
    
    // X point of UIView
    
    public var xPoint : CGFloat {
        
        return self.frame.origin.x
    }
    
    public var yPoint : CGFloat {
        
        return self.frame.origin.y
    }
    
    public var vHeight : CGFloat {
        
        return frame.size.height
    }
    public var vWidth : CGFloat {
        
        return self.frame.size.width
    }
    
    public func hideV(){
        self.isHidden = true
    }
    
    public func showV(){
        self.isHidden = false
    }
    
    // get view height + y pount 
    
    public var YH : CGFloat {
        
        return frame.origin.y + frame.size.height
    }
    
   public  var XW : CGFloat {
        
        return frame.origin.x + frame.size.width
    }
    
    // Take screenshot
    
    public func takeSnapshot() -> UIImage {
       
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    public func SliderAnimation(_ NewP:CGFloat){
        
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseOut, animations: {
            self.frame.origin.x = NewP
            
        }, completion: nil)
        
    }
 
    
    public func setShado() {
        
        let layer = self.layer
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 2.0
        layer.masksToBounds = false
        
    }
    
    public func setShadoWith(color:UIColor) {
        
        let layer = self.layer
        layer.shadowColor = color.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 2.0
        
        layer.masksToBounds = false
    }
    
    
}
