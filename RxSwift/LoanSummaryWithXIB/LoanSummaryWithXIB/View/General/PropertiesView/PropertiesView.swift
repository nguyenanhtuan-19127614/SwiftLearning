//
//  InfoView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

class PropertiesView: UIView {
    
    @IBOutlet weak var infoName: UILabel!
    @IBOutlet var contentView: UIView!
    let XIB_NAME = "PropertiesView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
            
    }
    
    func setInfoName(text: String) {
        infoName.text = text
    }
    
    func commonInit() {
        
        Bundle.main.loadNibNamed(XIB_NAME, owner: self)
        
        contentView.fixInView(self)
       
    }
}
