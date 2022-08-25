//
//  PriceView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit
class PriceView: UIView {
    
    private let approxLabel: UILabel = {
        
        let label = UILabel()
        label.text = "APPROX."
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
        
    }()
    
    private let approxPerMonth: UILabel = {
        
        let label = UILabel()

        label.text = "XXXXXXXX đ/ month"
        label.textColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 25)
        
        return label
        
    }()
    
    private let approxMonthLabel: UILabel = {
        
        let label = UILabel()
        label.text = "for XX months"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
        
    }()
    
    private let approxContainer: UIView = {
       
        let view = UIView()
        view.backgroundColor =  UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 0.5)
        return view
        
    }()
    
    private let offerLabel: UILabel = {
        
        let label = UILabel()
        label.text = "OFFER AMOUNT"
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
        
    }()
    
    private let offerValue: UILabel = {
        
        let label = UILabel()
        label.text = "XX,XXX,XXX đ"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
        
    }()
    
    private let offerContainer: UIView = {
        
        let view = UIView()
        view.backgroundColor =  UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 0.5)
    
        return view
        
    }()
    
    private let seperatorLine: UIView = {
        
        let view = UIView()
        view.backgroundColor =  UIColor.gray
    
        return view
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(approxContainer)
        approxContainer.addSubview(approxLabel)
        approxContainer.addSubview(approxPerMonth)
        approxContainer.addSubview(approxMonthLabel)
        
        self.addSubview(offerContainer)
        offerContainer.addSubview(offerLabel)
        offerContainer.addSubview(offerValue)
        
        self.addSubview(seperatorLine)
        
    }
    
    private func addLayout() {
        
        approxContainer.translatesAutoresizingMaskIntoConstraints = false
        approxLabel.translatesAutoresizingMaskIntoConstraints = false
        approxPerMonth.translatesAutoresizingMaskIntoConstraints = false
        approxMonthLabel.translatesAutoresizingMaskIntoConstraints = false
        offerContainer.translatesAutoresizingMaskIntoConstraints = false
        offerLabel.translatesAutoresizingMaskIntoConstraints = false
        offerValue.translatesAutoresizingMaskIntoConstraints = false
        seperatorLine.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            approxContainer.topAnchor.constraint(equalTo: self.topAnchor),
            approxContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            approxContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            approxContainer.widthAnchor.constraint(equalTo: self.widthAnchor),
            
            approxLabel.topAnchor.constraint(equalTo: approxContainer.topAnchor, constant: 10),
            approxLabel.centerXAnchor.constraint(equalTo: approxContainer.centerXAnchor),
            
            approxPerMonth.topAnchor.constraint(equalTo: approxLabel.bottomAnchor, constant: 10),
            approxPerMonth.centerXAnchor.constraint(equalTo: approxContainer.centerXAnchor),
            
            approxMonthLabel.topAnchor.constraint(equalTo: approxPerMonth.bottomAnchor, constant: 10),
            approxMonthLabel.centerXAnchor.constraint(equalTo: approxContainer.centerXAnchor),
            
            offerContainer.topAnchor.constraint(equalTo: approxContainer.bottomAnchor),
            offerContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            offerContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            offerContainer.widthAnchor.constraint(equalTo: self.widthAnchor),
            
            offerLabel.topAnchor.constraint(equalTo: offerContainer.topAnchor),
            offerLabel.centerXAnchor.constraint(equalTo: offerContainer.centerXAnchor),
            
            offerValue.bottomAnchor.constraint(equalTo: offerContainer.bottomAnchor, constant: -10),
            offerValue.centerXAnchor.constraint(equalTo: offerContainer.centerXAnchor),
            
            seperatorLine.topAnchor.constraint(equalTo: approxContainer.bottomAnchor, constant: -10),
            seperatorLine.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            seperatorLine.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            seperatorLine.heightAnchor.constraint(equalToConstant: 1),
        
        ])
        
       
        approxLabel.sizeToFit()
        approxPerMonth.sizeToFit()
        approxMonthLabel.sizeToFit()
        offerLabel.sizeToFit()
        offerValue.sizeToFit()
        
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        
        addSubViews()
        addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
    
    func loadData(perMonth: String?, months: String?, offerValue: String?) {
        
        if let perMonth = perMonth {
            self.approxPerMonth.text = "\(perMonth) đ/ month"
        }

        if let months = months {
            self.approxMonthLabel.text = "for \(months) months"
        }
        
        if let offerValue = offerValue {
            self.offerValue.text = "\(offerValue) đ"
        }
        
    }
}
