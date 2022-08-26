//
//  LoanTopView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import UIKit

class LoanTopView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    let XIB_NAME = "LoanTopView"
    
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
