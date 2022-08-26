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
    @IBOutlet weak var checkbox: UIButton!
    
    let XIB_NAME = "AgreementView"
    private let defaultColor: UIColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
    private let checkedColor: UIColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
    var isChecked: Bool = false
    
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
        checkbox.layer.masksToBounds = true
       
    }
    
    @IBAction func checkHandle(_ sender: Any) {
        
        UIView.transition(with: self, duration: 0.2, options: .transitionCrossDissolve, animations: {
                   
                   [weak self] in
                   guard let self = self else {
                       return
                   }
                   if self.isChecked {
                       self.checkbox.backgroundColor = self.defaultColor
                   } else {
                       self.checkbox.backgroundColor = self.checkedColor
                   }
                   
                   self.isChecked = !self.isChecked
                   
               }, completion: nil)

    }
    
    
}
