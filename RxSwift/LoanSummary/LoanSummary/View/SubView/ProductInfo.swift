//
//  ProductInfo.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

class InfoView: UIView {
    
    let infoLabel: UILabel = {
        
        let label = UILabel()
        label.font = label.font.withSize(18)
        return label
        
    }()
    
    let infoValue: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "######"
        return label
        
    }()
    
    func addSubViews() {
        
        self.addSubview(infoLabel)
        self.addSubview(infoValue)
        
    }
    
    func addLayout() {
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoValue.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            infoLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            infoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            infoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            infoValue.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            infoValue.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            infoValue.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        
        ])
        
        infoValue.sizeToFit()
        infoLabel.sizeToFit()
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubViews()
        addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
}

class ProductInfoView: UIView {
    
    let brandView: InfoView = {
        
        let view = InfoView()
        view.infoLabel.text = "Brand"
        return view
        
    }()
    
    let modelView: InfoView = {
        
        let view = InfoView()
        view.infoLabel.text = "Model"
        return view
        
    }()
    
    let interestRateView: InfoView = {
        
        let view = InfoView()
        view.infoLabel.text = "Interest rate (monthly)"
        return view
        
    }()
    
    let insuranceView: InfoView = {
        
        let view = InfoView()
        view.infoLabel.text = "Insurance"
        return view
        
    }()
    
    func addSubViews() {
        
        self.addSubview(brandView)
        self.addSubview(modelView)
        self.addSubview(interestRateView)
        self.addSubview(insuranceView)
        
    }
    
    func addLayout() {
        
        brandView.translatesAutoresizingMaskIntoConstraints = false
        modelView.translatesAutoresizingMaskIntoConstraints = false
        interestRateView.translatesAutoresizingMaskIntoConstraints = false
        insuranceView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            brandView.topAnchor.constraint(equalTo: self.topAnchor),
            brandView.widthAnchor.constraint(equalTo: self.widthAnchor),
            brandView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/4),
            
            modelView.topAnchor.constraint(equalTo: brandView.bottomAnchor),
            modelView.widthAnchor.constraint(equalTo: self.widthAnchor),
            modelView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/4),
            
            interestRateView.topAnchor.constraint(equalTo: modelView.bottomAnchor),
            interestRateView.widthAnchor.constraint(equalTo: self.widthAnchor),
            interestRateView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/4),
            
            insuranceView.topAnchor.constraint(equalTo: interestRateView.bottomAnchor),
            insuranceView.widthAnchor.constraint(equalTo: self.widthAnchor),
            insuranceView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/4),
        
        ])
        
    }
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubViews()
        addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
}
