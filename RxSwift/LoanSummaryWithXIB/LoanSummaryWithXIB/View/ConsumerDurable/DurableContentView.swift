//
//  DurableContentView.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import Foundation
import UIKit

class ConsumerDurableContentView: UIView {
    
    //Top View
    private let topView = LoanTopView()
    
    //Production Image
    private let productImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "product")
        imageView.contentMode = .scaleToFill
       
        return imageView
        
    }()
    
    //Price View
    private let priceView = PriceView()
    
    //PropertiesView
    private let infoViewContainer = UIView()
    private let brandView = PropertiesView()
    private let modelView = PropertiesView()
    private let interestRateView = PropertiesView()
    private let insuranceView = PropertiesView()
    
    //Fee view
    private let terminateFeeView = FeeView()
    
    //More Detail View
    private let moreDetailView = MoreDetailView()
    
    //Agreement View
    private let agreementView = AgreementView()
    
    //Contract Detail View
    private let contractDetailView = ContractDetailView()
    
    //Sign Button
    private let signButton = SignButton()
    
    //Reject Button
    private let rejectButton = RejectButton()
    
    //Close label
    private let closeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Not now"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor.gray.withAlphaComponent(0.8)
        label.sizeToFit()
        return label
        
    }()

    //add subview
    private func addSubViews() {
        
        self.addSubview(topView)
        self.addSubview(productImage)
        self.addSubview(priceView)
        self.addSubview(infoViewContainer)
        
        infoViewContainer.addSubview(brandView)
        infoViewContainer.addSubview(modelView)
        infoViewContainer.addSubview(interestRateView)
        infoViewContainer.addSubview(insuranceView)
        
        self.addSubview(terminateFeeView)
        self.addSubview(moreDetailView)
        self.addSubview(agreementView)
        self.addSubview(contractDetailView)
        self.addSubview(signButton)
        self.addSubview(rejectButton)
        self.addSubview(closeLabel)
      
    }
    

    //add layout
    
    private func addInfoViewLayout() {
        
        brandView.translatesAutoresizingMaskIntoConstraints = false
        modelView.translatesAutoresizingMaskIntoConstraints = false
        interestRateView.translatesAutoresizingMaskIntoConstraints = false
        insuranceView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            brandView.topAnchor.constraint(equalTo: infoViewContainer.topAnchor),
            brandView.widthAnchor.constraint(equalTo: infoViewContainer.widthAnchor),
            brandView.heightAnchor.constraint(equalTo: infoViewContainer.heightAnchor, multiplier: 1/4),
            
            modelView.topAnchor.constraint(equalTo: brandView.bottomAnchor),
            modelView.widthAnchor.constraint(equalTo: infoViewContainer.widthAnchor),
            modelView.heightAnchor.constraint(equalTo: infoViewContainer.heightAnchor, multiplier: 1/4),
            
            interestRateView.topAnchor.constraint(equalTo: modelView.bottomAnchor),
            interestRateView.widthAnchor.constraint(equalTo: infoViewContainer.widthAnchor),
            interestRateView.heightAnchor.constraint(equalTo: infoViewContainer.heightAnchor, multiplier: 1/4),
            
            insuranceView.topAnchor.constraint(equalTo: interestRateView.bottomAnchor),
            insuranceView.widthAnchor.constraint(equalTo: infoViewContainer.widthAnchor),
            insuranceView.heightAnchor.constraint(equalTo: infoViewContainer.heightAnchor, multiplier: 1/4),
            
            
        ])
    }
    
    private func addLayout() {
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        productImage.translatesAutoresizingMaskIntoConstraints = false
        priceView.translatesAutoresizingMaskIntoConstraints = false
        infoViewContainer.translatesAutoresizingMaskIntoConstraints = false
        terminateFeeView.translatesAutoresizingMaskIntoConstraints = false
        moreDetailView.translatesAutoresizingMaskIntoConstraints = false
        agreementView.translatesAutoresizingMaskIntoConstraints = false
        contractDetailView.translatesAutoresizingMaskIntoConstraints = false
        signButton.translatesAutoresizingMaskIntoConstraints = false
        rejectButton.translatesAutoresizingMaskIntoConstraints = false
        closeLabel.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            topView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 150),
            
            productImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            productImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            productImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/4),
            productImage.heightAnchor.constraint(equalTo: self.topView.heightAnchor, multiplier: 2),
            
            priceView.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 10),
            priceView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            priceView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            priceView.heightAnchor.constraint(equalTo: self.productImage.heightAnchor, multiplier: 0.8),
           
            infoViewContainer.topAnchor.constraint(equalTo: priceView.bottomAnchor, constant: 10),
            infoViewContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            infoViewContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            infoViewContainer.heightAnchor.constraint(equalTo: priceView.heightAnchor),
 
            terminateFeeView.topAnchor.constraint(equalTo: infoViewContainer.bottomAnchor, constant: 10),
            terminateFeeView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            terminateFeeView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            terminateFeeView.heightAnchor.constraint(equalToConstant: 30),
    
            moreDetailView.topAnchor.constraint(equalTo: terminateFeeView.bottomAnchor, constant: 20),
            moreDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            moreDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            moreDetailView.heightAnchor.constraint(equalToConstant: 30),
            
            agreementView.topAnchor.constraint(equalTo: moreDetailView.bottomAnchor, constant: 30),
            agreementView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            agreementView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            agreementView.heightAnchor.constraint(equalToConstant: 40),
           
            contractDetailView.topAnchor.constraint(equalTo: agreementView.bottomAnchor, constant: 30),
            contractDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            contractDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            contractDetailView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            contractDetailView.heightAnchor.constraint(equalToConstant: 30),
            
            signButton.topAnchor.constraint(equalTo: contractDetailView.bottomAnchor, constant: 30),
            signButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            signButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            signButton.heightAnchor.constraint(equalToConstant: 50),
            
            rejectButton.topAnchor.constraint(equalTo: signButton.bottomAnchor, constant: 20),
            rejectButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            rejectButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            rejectButton.heightAnchor.constraint(equalToConstant: 50),
            
            closeLabel.topAnchor.constraint(equalTo: rejectButton.bottomAnchor, constant: 30),
            closeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            closeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
            
        ])
        
        self.addInfoViewLayout()
        
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
    
    override func layoutSubviews() {
        
        super.layoutSubviews()

    }
    
    
    
}
