//
//  OfferView.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation
import UIKit

class OfferView: UIView {
    
    private var personalContentDelegate: PersonalLoanContentView?
    private let checkBorderColor: UIColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
    private let checkBackgroundColor: UIColor = UIColor(red: 238/255, green: 255/255, blue: 234/255, alpha: 1)
    
    //Radio Button
    private let radioButton = RadioButton()
    
    //Offer Amount
    private let offerAmountContainer: UIView = {
        
        let view = UIView()
        return view
        
    }()
    
    private let offerLabel: UILabel = {
        
        let label = UILabel()
        label.text = "OFFER"
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.sizeToFit()
        return label
        
    }()
    
    private let amountLabel: UILabel = {
        
        let label = UILabel()
        label.text = "OFFER AMOUNT"
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.sizeToFit()
        return label
        
    }()
    
    private let amountValue: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "####### đ"
        label.textColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
        label.sizeToFit()
        return label
        
    }()
    
    private let tenorLabel: UILabel = {
        
        let label = UILabel()
        label.text = "TENOR"
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 10)

        label.sizeToFit()
        return label
        
    }()
    
    private let tenorValue: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "XX months"
        label.sizeToFit()
        return label
        
    }()
    
    //Approx
    private let firstApproxContainer: PersonalApproxContainer = {
        
        let container = PersonalApproxContainer()
        container.layer.borderWidth = 0.5
        container.layer.borderColor = UIColor.lightGray.cgColor
        return container
        
    }()
    
    private let thenApproxContainer: PersonalApproxContainer = {
        
        let container = PersonalApproxContainer()
        container.layer.borderWidth = 0.5
        container.layer.borderColor = UIColor.lightGray.cgColor
        return container
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(radioButton)
        self.addSubview(offerAmountContainer)
        self.addSubview(firstApproxContainer)
        self.addSubview(thenApproxContainer)
        
        offerAmountContainer.addSubview(offerLabel)
        offerAmountContainer.addSubview(amountLabel)
        offerAmountContainer.addSubview(amountValue)
        offerAmountContainer.addSubview(tenorLabel)
        offerAmountContainer.addSubview(tenorValue)
        
    }
    
    private func addLayout() {
        
        radioButton.translatesAutoresizingMaskIntoConstraints = false
        
        offerAmountContainer.translatesAutoresizingMaskIntoConstraints = false
        firstApproxContainer.translatesAutoresizingMaskIntoConstraints = false
        thenApproxContainer.translatesAutoresizingMaskIntoConstraints = false
        
        offerLabel.translatesAutoresizingMaskIntoConstraints = false
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        amountValue.translatesAutoresizingMaskIntoConstraints = false
        tenorLabel.translatesAutoresizingMaskIntoConstraints = false
        tenorValue.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            //Radio Button
            radioButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            radioButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            radioButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/18),
            radioButton.heightAnchor.constraint(equalTo: radioButton.widthAnchor),
            
            //Containter
            offerAmountContainer.topAnchor.constraint(equalTo: self.topAnchor),
            offerAmountContainer.widthAnchor.constraint(equalTo: self.widthAnchor),
            offerAmountContainer.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier: 1/2),
            
            firstApproxContainer.topAnchor.constraint(equalTo: offerAmountContainer.bottomAnchor),
            firstApproxContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            firstApproxContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            firstApproxContainer.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2),
            
            thenApproxContainer.topAnchor.constraint(equalTo: offerAmountContainer.bottomAnchor),
            thenApproxContainer.leadingAnchor.constraint(equalTo: firstApproxContainer.trailingAnchor),
            thenApproxContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            thenApproxContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            //Subviews
            offerLabel.topAnchor.constraint(equalTo: offerAmountContainer.topAnchor,constant: 5),
            offerLabel.centerXAnchor.constraint(equalTo: offerAmountContainer.centerXAnchor),
            
            amountLabel.topAnchor.constraint(equalTo: offerLabel.bottomAnchor, constant: 10),
            amountLabel.centerXAnchor.constraint(equalTo: offerAmountContainer.centerXAnchor),
            
            amountValue.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 5),
            amountValue.centerXAnchor.constraint(equalTo: offerAmountContainer.centerXAnchor),
            
            tenorLabel.topAnchor.constraint(equalTo: amountValue.bottomAnchor, constant: 5),
            tenorLabel.centerXAnchor.constraint(equalTo: offerAmountContainer.centerXAnchor),
            
            tenorValue.topAnchor.constraint(equalTo: tenorLabel.bottomAnchor, constant: 5),
            tenorValue.centerXAnchor.constraint(equalTo: offerAmountContainer.centerXAnchor)
            
        ])
      
    }
    
    func setupDelegate(_ personalLoanContentView: PersonalLoanContentView) {
        self.personalContentDelegate = personalLoanContentView
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
    
    func selected() {
        radioButton.turnOn()
        UIView.transition(with: self, duration: 0.1, options: .transitionCrossDissolve, animations: {
            
            [weak self] in
            guard let self = self else {
                return
            }
            
            
            self.layer.borderWidth = 4
            self.layer.borderColor = self.checkBorderColor.cgColor
            self.backgroundColor =  self.checkBackgroundColor
            
        }, completion: nil)
    }
    
    func unselected() {
        
        radioButton.turnOff()
        UIView.transition(with: self, duration: 0.1, options: .transitionCrossDissolve, animations: {
            
            [weak self] in
            guard let self = self else {
                return
            }
            
            
            self.layer.borderWidth = 0.5
            self.layer.borderColor = UIColor.lightGray.cgColor
            self.backgroundColor =  UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 0.5)
            
            
        }, completion: nil)
    }
    
   
}

fileprivate class PersonalApproxContainer: UIView {
    
    private let nameLabel: UILabel = {
       
        let label = UILabel()
        label.text = "For first X months"
        label.font = label.font.withSize(14)
        
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
    
    private let approxLabel: UILabel = {
        
        let label = UILabel()
        label.text = "APPROX."
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 10)
        label.sizeToFit()
        
        return label
        
    }()
    
    private let priceLabel: UILabel = {
        
        let label = UILabel()
        label.text = "####### đ/ mth"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = UIColor(red: 60/255, green: 160/255, blue: 80/255, alpha: 1)
      
        label.sizeToFit()
        
        return label
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(nameLabel)
        self.addSubview(timeLabel)
        self.addSubview(approxLabel)
        self.addSubview(priceLabel)
        
    }
    
    private func addLayout() {
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        approxLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 15),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            timeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            approxLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
            approxLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            priceLabel.topAnchor.constraint(equalTo: approxLabel.bottomAnchor, constant: 10),
            priceLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
       
        
        ])
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.addSubViews()
        self.addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
      
    }
    
}
