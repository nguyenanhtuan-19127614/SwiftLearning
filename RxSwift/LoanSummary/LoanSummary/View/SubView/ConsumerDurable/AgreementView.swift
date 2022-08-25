//
//  AgreementView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

class AgreementView: UIView {
    
    private let defaultColor: UIColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
    private let checkedColor: UIColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
    var isChecked: Bool = false
    
    private let label: UILabel = {
        
        let label = UILabel()
       
        let htmlString = "<span style=\"font-size: 15\"> I agree to the E-services <span style=\"color:#50A050\">term & conditions</span> </span>"
        
        label.renderHTMLAtribute(htmlString: htmlString)
        
        return label
        
    }()
    
    private let checkbox: UIButton = {
        
        let btn = UIButton()
        btn.layer.masksToBounds = true
        btn.layer.borderWidth = 0.5
        btn.layer.cornerRadius = 5
        return btn
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(label)
        self.addSubview(checkbox)
        
    }
    
    private func addLayout() {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            checkbox.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            checkbox.heightAnchor.constraint(equalTo: self.heightAnchor, constant: -10),
            checkbox.widthAnchor.constraint(equalTo: self.heightAnchor, constant: -10),
            checkbox.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            label.leadingAnchor.constraint(equalTo: checkbox.trailingAnchor, constant: 15),
            label.heightAnchor.constraint(equalTo: self.heightAnchor),
        
        ])
        
        label.sizeToFit()
      
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        checkbox.backgroundColor = defaultColor
        addSubViews()
        addLayout()
        
        checkbox.addTarget(self, action: #selector(checkboxTap), for: .touchUpInside)
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
    
    @objc func checkboxTap() {
        
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
