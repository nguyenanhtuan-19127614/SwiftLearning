//
//  UIViewExtension.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit
extension UIView {
    
    func fixInView(_ container: UIView!) -> Void{
        
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        
    }
    
    func setGradientBackground(colors: [CGColor]) {
           
           self.layoutIfNeeded()
           
           let gradient = CAGradientLayer()
           
           gradient.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
           gradient.colors = colors
           gradient.name = "GradientSublayer"
           self.layer.insertSublayer(gradient, at: 0)
       
    }
}
