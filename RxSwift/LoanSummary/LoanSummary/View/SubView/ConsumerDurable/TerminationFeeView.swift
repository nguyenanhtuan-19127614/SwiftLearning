//
//  TerminationFreeView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

class TerminationFeeView: UIView {
    
    private let feeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "EARLY TERMINATION FEE: 5% OF REMAINING PRINCIPAL"
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 11)
        label.sizeToFit()
        return label
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(feeLabel)
        
    }
    
    private func addLayout() {
        
        feeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            feeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            feeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
        ])
        
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        addSubViews()
        addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
    
}
