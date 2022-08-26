//
//  AgreementView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

class AgreementView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var agreementLabel: UILabel!
    
    let XIB_NAME = "AgreementViewXIB"
    
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
        agreementLabel.text = "I agree to the E-services term & conditions"
       
    }
    
}
