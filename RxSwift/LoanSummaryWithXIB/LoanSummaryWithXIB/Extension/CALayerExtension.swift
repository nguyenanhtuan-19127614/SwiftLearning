//
//  CALayerExtension.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit
extension CALayer {
    @objc var borderUIColor: UIColor {
        set {
            self.borderColor = newValue.cgColor
        }
    
        get {
            return UIColor(cgColor: self.borderColor!)
        }
    }
}
