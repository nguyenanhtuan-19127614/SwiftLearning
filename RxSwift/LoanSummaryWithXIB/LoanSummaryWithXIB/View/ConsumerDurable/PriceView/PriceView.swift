//
//  PriceView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

class PriceView: UIView {
    
    @IBOutlet var contentView: UIView!
    let XIB_NAME = "PriceView"
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
            
    }
    
    func commonInit() {
        
        Bundle.main.loadNibNamed(XIB_NAME, owner: self)
        contentView.fixInView(self)
        
    }

    
}
