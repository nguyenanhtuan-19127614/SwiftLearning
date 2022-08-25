//
//  ProductInfo.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit


class ProductInfoView: UIView {
    
    private let brandView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Brand")
        return view
        
    }()
    
    private let modelView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Model")
        return view
        
    }()
    
    private let interestRateView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Interest rate (monthly)")
        return view
        
    }()
    
    private let insuranceView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Insurance")
        return view
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(brandView)
        self.addSubview(modelView)
        self.addSubview(interestRateView)
        self.addSubview(insuranceView)
        
    }
    
    private func addLayout() {
        
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
    
    func loadData(brand: String?, model: String?, interest: String?, insurance: String?) {
        
        if let brand = brand {
            self.brandView.setInfoValue(value: brand)
        }
        
        if let model = model {
            self.modelView.setInfoValue(value: model)
        }
        
        if let interest = interest {
            self.interestRateView.setInfoValue(value: interest)
        }
        
        if let insurance = insurance {
            self.insuranceView.setInfoValue(value: insurance)
        }
      
    }
}
