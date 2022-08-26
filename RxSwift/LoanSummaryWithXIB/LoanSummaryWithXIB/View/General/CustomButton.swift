//
//  CustomButton.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.masksToBounds = true
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
//    @IBInspectable var startColor: UIColor? {
//
//        get {
//            return self.startColor
//        }
//        set {
//
//            guard let endColor = endColor else {
//                return
//            }
//
//            guard let startColorCG = newValue?.cgColor else {
//                return
//            }
//            let endColorCG = endColor.cgColor
//            self.setGradientBackground(colors: [startColorCG,endColorCG])
//
//        }
//
//    }
//
//    @IBInspectable var endColor: UIColor? {
//        get {
//            return self.endColor
//        }
//        set {
//
//            guard let startColor = startColor else {
//                return
//            }
//            guard let endColorCG = newValue?.cgColor else {
//                return
//            }
//            let startColorCG = startColor.cgColor
//            self.setGradientBackground(colors: [startColorCG,endColorCG])
//
//
//        }
//
//    }
//
    @IBInspectable var startColor: UIColor = UIColor.clear
    @IBInspectable var endColor: UIColor = UIColor.clear

    override func layoutSubviews() {
        
        super.layoutSubviews()
        self.setGradientBackground(colors: [startColor.cgColor, endColor.cgColor])
        
    }
//    override func layout(_ rect: CGRect) {
//
//        self.setGradientBackground(colors: [startColor.cgColor, endColor.cgColor])
//
//    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
        
    }
    
  
}
