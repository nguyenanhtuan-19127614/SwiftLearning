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
        
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: container.topAnchor),
            self.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            self.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: container.trailingAnchor)
        ])
   
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
