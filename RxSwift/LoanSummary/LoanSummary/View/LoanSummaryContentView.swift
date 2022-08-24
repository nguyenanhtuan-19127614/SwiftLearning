//
//  LoanSummaryContentView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

class LoanSummaryContentView: UIView {
    
    //Top View
    let topView = LoanTopView()
    
    //Production Image
    let productImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "testImage")
        imageView.contentMode = .scaleToFill
       
        return imageView
        
    }()
    
    //Price View
    let priceView = PriceView()
    
    //Product Info View
    let productInfoView = ProductInfoView()
    
    //Terminate Fee View
    let terminateFeeView = TerminationFeeView()
    
    //More Detail View
    let moreDetailView = MoreDetailView()
    
    //Agreement View
    
    let agreementView = AgreementView()
    
    //Contract Detail
    let contractDetailView = ContractDetailView()

    //Sign Button
    let signButton: UIButton = {
        
        let btn = UIButton()
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 5
        
        btn.setTitle("SIGN CONTRACT", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
        
    }()
    
    //Reject Button
    let rejectButton: UIButton = {
        
        let color = UIColor(red: 80/255, green: 160/255, blue: 80/255, alpha: 1)
        let btn = UIButton()
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 1
        btn.layer.borderColor = color.cgColor
        
        btn.setTitle("REJECT OFFER", for: .normal)
        btn.setTitleColor(color, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        return btn
    }()
    
    //Close label
    let closeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Not now"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor.gray.withAlphaComponent(0.8)
        label.sizeToFit()
        return label
        
    }()
    
    //add subview
    func addSubViews() {
        self.addSubview(topView)
        self.addSubview(productImage)
        self.addSubview(priceView)
        self.addSubview(productInfoView)
        self.addSubview(terminateFeeView)
        self.addSubview(moreDetailView)
        self.addSubview(agreementView)
        self.addSubview(contractDetailView)
        self.addSubview(signButton)
        self.addSubview(rejectButton)
        self.addSubview(closeLabel)
    }
    

    //add layout
    func addLayout() {
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        productImage.translatesAutoresizingMaskIntoConstraints = false
        priceView.translatesAutoresizingMaskIntoConstraints = false
        productInfoView.translatesAutoresizingMaskIntoConstraints = false
        terminateFeeView.translatesAutoresizingMaskIntoConstraints = false
        moreDetailView.translatesAutoresizingMaskIntoConstraints = false
        agreementView.translatesAutoresizingMaskIntoConstraints = false
        contractDetailView.translatesAutoresizingMaskIntoConstraints = false
        signButton.translatesAutoresizingMaskIntoConstraints = false
        rejectButton.translatesAutoresizingMaskIntoConstraints = false
        closeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            topView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/9),
            
            productImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            productImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            productImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/4),
            productImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/4),
            
            priceView.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 10),
            priceView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            priceView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            priceView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/8),
            
            productInfoView.topAnchor.constraint(equalTo: priceView.bottomAnchor, constant: 10),
            productInfoView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            productInfoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            productInfoView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/7),
            
            terminateFeeView.topAnchor.constraint(equalTo: productInfoView.bottomAnchor, constant: 10),
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
            
        ])
        
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubViews()
        addLayout()
    
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        let startColor = CGColor(red: 0.439, green: 0.71, blue: 0.341, alpha: 1)
        let endColor = CGColor(red: 0.056, green: 0.558, blue: 0.317, alpha: 1)
        
        signButton.setGradientBackground(colors: [startColor,endColor])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
    
}
