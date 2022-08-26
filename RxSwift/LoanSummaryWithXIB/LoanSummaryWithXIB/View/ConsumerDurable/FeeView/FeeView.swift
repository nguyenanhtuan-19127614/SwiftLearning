//
//  FeeView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

class FeeView: UIView {
    
    @IBOutlet weak var feeLabel: UILabel!
    @IBOutlet var contentView: UIView!
    let XIB_NAME = "FeeViewXIB"
    
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
        
        self.feeLabel.text = "EARLY TERMINATION FEE: 5% OF REMAINING PRINCIPAL"
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8
    }
    
}
