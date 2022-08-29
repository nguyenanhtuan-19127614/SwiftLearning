//
//  PersonalLoanView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 29/08/2022.
//

import Foundation
import UIKit

class PersonalLoanView: UIView {
    
    //Top View
    let topView: LoanTopView = {
        
        let view = LoanTopView()
        view.setContentName(name: "Personal Loan")
        return view
        
    }()
    
    //Loan Image
    private let loanImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "loan")
        imageView.contentMode = .scaleToFill
       
        return imageView
        
    }()
    
    //Select Label
    //Select one Label
    private let selectOfferLabel: UILabel = {
        
        let label = UILabel()
        label.text = "SELECT ONE OFFER"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.sizeToFit()
        return label
        
    }()
    
    func addSubViews() {
        
        self.addSubview(topView)
        self.addSubview(loanImage)
        self.addSubview(selectOfferLabel)
    }
    
    func addLayout() {
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        loanImage.translatesAutoresizingMaskIntoConstraints = false
        selectOfferLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            topView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            topView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 150),
            
            loanImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            loanImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loanImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/4),
            loanImage.heightAnchor.constraint(equalTo: self.topView.heightAnchor, multiplier: 2),
            
            selectOfferLabel.topAnchor.constraint(equalTo: loanImage.bottomAnchor, constant: 20),
            selectOfferLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            selectOfferLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.addLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
