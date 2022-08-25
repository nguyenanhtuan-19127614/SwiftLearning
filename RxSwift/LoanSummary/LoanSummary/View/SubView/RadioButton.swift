//
//  RadioButton.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation
import UIKit

class RadioButton: UIView {
    
    private let checkColor: UIColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
  
    private var isCheck: Bool = false
    
    private let checkView: UIView = {
        
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = .lightGray.withAlphaComponent(0.3)
        
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.8).cgColor
        
        self.addSubview(checkView)
        
        NSLayoutConstraint.activate([
        
            checkView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            checkView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            checkView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2),
            checkView.heightAnchor.constraint(equalTo: checkView.widthAnchor)
            
        ])
    
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
      
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
        self.checkView.layer.cornerRadius = self.checkView.frame.width/2
        
    }
    
    func getIsCheck() -> Bool {
        return isCheck
    }
    
    func turnOn() {
        
        UIView.transition(with: self, duration: 0.1, options: .transitionCrossDissolve, animations: {
            
            [weak self] in
            guard let self = self else {
                return
            }
            
            self.layer.borderWidth = 2
            self.layer.borderColor = self.checkColor.cgColor
            self.checkView.backgroundColor = self.checkColor
            
            self.isCheck = true
            
        }, completion: nil)
        
    }
    
    func turnOff() {
        UIView.transition(with: self, duration: 0.1, options: .transitionCrossDissolve, animations: {
            
            [weak self] in
            guard let self = self else {
                return
            }
            
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.8).cgColor
            self.checkView.backgroundColor = .clear
            
            self.isCheck = false
            
        }, completion: nil)
    }
    

    
}
