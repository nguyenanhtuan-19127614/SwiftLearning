//
//  PriceView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit
class PriceView: UIView {
    
    let approxLabel: UILabel = {
        
        let label = UILabel()
        label.text = "APPROX."
        return label
        
    }()
    
    let approxPerMonth: UILabel = {
        
        let label = UILabel()
        label.text = "XXXXXXXX đ/ month"
        return label
        
    }()
    
    let approxMonthLabel: UILabel = {
        
        let label = UILabel()
        label.text = "for XX months"
        return label
        
    }()
    
    let approxContainer: UIView = {
       
        let view = UIView()
        view.backgroundColor =  UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return view
        
    }()
    
    let offerLabel: UILabel = {
        
        let label = UILabel()
        label.text = "OFFER AMOUNT"
        return label
        
    }()
    
    let offerValue: UILabel = {
        
        let label = UILabel()
        label.text = "XX,XXX,XXX đ"
        return label
        
    }()
    
    let offerContainer: UIView = {
        
        let view = UIView()
        view.backgroundColor =  UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        return view
        
    }()
    
    func addSubViews() {
        
        self.addSubview(approxContainer)
        approxContainer.addSubview(approxLabel)
        approxContainer.addSubview(approxPerMonth)
        approxContainer.addSubview(approxMonthLabel)
        
        self.addSubview(offerContainer)
        offerContainer.addSubview(offerLabel)
        offerContainer.addSubview(offerValue)
        
    }
    
    func addLayout() {
        
        approxContainer.translatesAutoresizingMaskIntoConstraints = false
        approxLabel.translatesAutoresizingMaskIntoConstraints = false
        approxPerMonth.translatesAutoresizingMaskIntoConstraints = false
        approxMonthLabel.translatesAutoresizingMaskIntoConstraints = false
        offerContainer.translatesAutoresizingMaskIntoConstraints = false
        offerLabel.translatesAutoresizingMaskIntoConstraints = false
        offerValue.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            approxContainer.topAnchor.constraint(equalTo: self.topAnchor),
            approxContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            approxContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            approxContainer.widthAnchor.constraint(equalTo: self.widthAnchor),
            
            approxLabel.topAnchor.constraint(equalTo: approxContainer.topAnchor, constant: 10),
            approxLabel.centerXAnchor.constraint(equalTo: approxContainer.centerXAnchor),
         
            
            approxMonthLabel.bottomAnchor.constraint(equalTo: approxContainer.bottomAnchor, constant: -10),
            approxMonthLabel.centerXAnchor.constraint(equalTo: approxContainer.centerXAnchor),
            
            approxPerMonth.topAnchor.constraint(equalTo: approxLabel.bottomAnchor, constant: 10),
            approxPerMonth.bottomAnchor.constraint(equalTo: approxMonthLabel.topAnchor, constant: -10),
            approxPerMonth.centerXAnchor.constraint(equalTo: approxContainer.centerXAnchor),
            
            offerContainer.topAnchor.constraint(equalTo: approxContainer.bottomAnchor),
            offerContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            offerContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            offerContainer.widthAnchor.constraint(equalTo: self.widthAnchor),
            
            offerLabel.topAnchor.constraint(equalTo: offerContainer.topAnchor,constant: 10),
            offerLabel.centerXAnchor.constraint(equalTo: offerContainer.centerXAnchor),
            
            offerValue.bottomAnchor.constraint(equalTo: offerContainer.bottomAnchor, constant: -10),
            offerValue.centerXAnchor.constraint(equalTo: offerContainer.centerXAnchor),
        
        ])
        
        approxContainer.layer.borderWidth = 1
        offerContainer.layer.borderWidth = 1
        
        approxLabel.sizeToFit()
        approxPerMonth.sizeToFit()
        approxMonthLabel.sizeToFit()
        offerLabel.sizeToFit()
        offerValue.sizeToFit()
        
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        addSubViews()
        addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
}
