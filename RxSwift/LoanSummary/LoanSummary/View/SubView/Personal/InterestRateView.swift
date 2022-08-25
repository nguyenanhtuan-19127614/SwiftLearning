//
//  InterestRateView.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation
import UIKit
class InterestRateView: UIView {
    
    private let nameLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Interest rate"
        label.font = label.font.withSize(12)
        
        label.sizeToFit()
        
        return label
        
    }()
    
    private let timeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "From MM/YYYY to MM/YYYY"
        label.font = label.font.withSize(12)
       
        label.sizeToFit()
        
        return label
        
    }()
    
    private let rateLabel: UILabel = {
        
        let label = UILabel()
        label.text = "{n}%"
        label.font = UIFont.boldSystemFont(ofSize: 15)
      
        label.sizeToFit()
        
        return label
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(nameLabel)
        self.addSubview(timeLabel)
        self.addSubview(rateLabel)
        
    }
    
    private func addLayout() {
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        rateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            timeLabel.bottomAnchor.constraint(equalTo: rateLabel.topAnchor,constant: -5),
            timeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            rateLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            rateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
       
        
        ])
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        
        self.backgroundColor =  UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 0.5)
        
        self.addSubViews()
        self.addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
      
    }
    
}
