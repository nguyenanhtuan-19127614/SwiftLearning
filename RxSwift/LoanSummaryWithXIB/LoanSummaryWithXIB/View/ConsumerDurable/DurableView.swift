//
//  DurableView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

class DurableView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    let XIB_NAME = "DurableViewXIB"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
//        let startColor = UIColor(red: 20/255, green: 140/255, blue: 80/255, alpha: 1).cgColor
//        let endColor = UIColor(red: 100/255, green: 140/255, blue: 80/255, alpha: 1).cgColor
//        signBtn.setGradientBackground(colors: [startColor,endColor])
    }
    
    func commonInit() {
        
        Bundle.main.loadNibNamed(XIB_NAME, owner: self)
        contentView.fixInView(self)
        
        
        
    }
    
}
