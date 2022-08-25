//
//  PersonalLoanContentView.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation
import UIKit
class PersonalLoanContentView: UIView {
    
    private let numberOffers = 8
   
    //Top View
    private let topView = LoanTopView()
    
    //Production Image
    private let loanImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "loanImage")
        imageView.contentMode = .scaleToFill
       
        return imageView
        
    }()
    
    //Select one Label
    private let selectOfferLabel: UILabel = {
        
        let label = UILabel()
        label.text = "SELECT ONE OFFER"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.sizeToFit()
        return label
        
    }()
    
    //Offer View
    
    //MARK: TEST==================================
   
    private var offerViewArray: [OfferView] = []
    private func createOfferViews(numbers: Int) {
        
        for _ in 1...numberOffers {
            
            let offerView: OfferView = {
                
                let view = OfferView()
                view.translatesAutoresizingMaskIntoConstraints = false
                view.isUserInteractionEnabled = true
                return view
                
            }()
            
            offerViewArray.append(offerView)
            
        }
        
    }
    
    private func addOfferViews() {
        
        for i in offerViewArray {
            self.addSubview(i)
        }
        
    }
    
    //MARK: ==================================
    
    private let offerView1: OfferView = {
        
        let view = OfferView()
        view.isUserInteractionEnabled = true
        return view
        
    }()
    
    private let offerView2: OfferView = {
        
        let view = OfferView()
        view.isUserInteractionEnabled = true
        return view
        
    }()
    
    private let offerView3: OfferView = {
        
        let view = OfferView()
        view.isUserInteractionEnabled = true
        return view
        
    }()
    
    private var offerViewList: [OfferView] = []
    
    //Offer View
    private let interestView1 = InterestRateView()
    
    private let interestView2 = InterestRateView()
    
    //Loan Info View
    private let loanInfoView = LoanInfoView()
    
    //Confirm Button
    private let confirmButton: UIButton = {
        
        let btn = UIButton()
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 5
        
        btn.setTitle("CONFIRM AND DISBURSE", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return btn
        
    }()
    
    //Reject Button
    private let rejectButton: UIButton = {
        
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
    private let closeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Not now"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor.gray.withAlphaComponent(0.8)
        label.sizeToFit()
        return label
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(topView)
        self.addSubview(loanImage)
        self.addSubview(selectOfferLabel)
        self.createOfferViews(numbers: self.numberOffers)
        self.addOfferViews()
//        self.addSubview(offerView1)
//        self.addSubview(offerView2)
//        self.addSubview(offerView3)
        self.addSubview(interestView1)
        self.addSubview(interestView2)
        self.addSubview(loanInfoView)
        self.addSubview(confirmButton)
        self.addSubview(rejectButton)
        self.addSubview(closeLabel)
        
    }
    
    private func addLayout() {
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        loanImage.translatesAutoresizingMaskIntoConstraints = false
        selectOfferLabel.translatesAutoresizingMaskIntoConstraints = false
//        offerView1.translatesAutoresizingMaskIntoConstraints = false
//        offerView2.translatesAutoresizingMaskIntoConstraints = false
//        offerView3.translatesAutoresizingMaskIntoConstraints = false
        interestView1.translatesAutoresizingMaskIntoConstraints = false
        interestView2.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        rejectButton.translatesAutoresizingMaskIntoConstraints = false
        closeLabel.translatesAutoresizingMaskIntoConstraints = false
        loanInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            topView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            topView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 170),
            
            loanImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            loanImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loanImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.6),
            loanImage.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 1.5),
         
            selectOfferLabel.topAnchor.constraint(equalTo: loanImage.bottomAnchor, constant: 20),
            selectOfferLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
//            offerView1.topAnchor.constraint(equalTo: selectOfferLabel.bottomAnchor, constant: 20),
//            offerView1.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            offerView1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
//            offerView1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
//            offerView1.heightAnchor.constraint(equalTo: loanImage.heightAnchor),
//
//            offerView2.topAnchor.constraint(equalTo: offerView1.bottomAnchor, constant: 20),
//            offerView2.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            offerView2.widthAnchor.constraint(equalTo: offerView1.widthAnchor),
//            offerView2.heightAnchor.constraint(equalTo: offerView1.heightAnchor),
//
//            offerView3.topAnchor.constraint(equalTo: offerView2.bottomAnchor, constant: 20),
//            offerView3.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            offerView3.widthAnchor.constraint(equalTo: offerView1.widthAnchor),
//            offerView3.heightAnchor.constraint(equalTo: offerView1.heightAnchor),
            
            
            
        ])
        
        if offerViewArray.count != 0 {
            
            NSLayoutConstraint.activate([
                
                offerViewArray[0].topAnchor.constraint(equalTo: selectOfferLabel.bottomAnchor, constant: 20),
                offerViewArray[0].centerXAnchor.constraint(equalTo: self.centerXAnchor),
                offerViewArray[0].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                offerViewArray[0].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
                offerViewArray[0].heightAnchor.constraint(equalTo: loanImage.heightAnchor),
                
            ])
            
            for i in 1...offerViewArray.count - 1 {
                
                let j = i - 1
                
                NSLayoutConstraint.activate([
                    
                    offerViewArray[i].topAnchor.constraint(equalTo: offerViewArray[j].bottomAnchor, constant: 20),
                    offerViewArray[i].centerXAnchor.constraint(equalTo: self.centerXAnchor),
                    offerViewArray[i].widthAnchor.constraint(equalTo: offerViewArray[0].widthAnchor),
                    offerViewArray[i].heightAnchor.constraint(equalTo: offerViewArray[0].heightAnchor),

                ])
               
            }
        }

        NSLayoutConstraint.activate([
            interestView1.topAnchor.constraint(equalTo: offerViewArray[offerViewArray.count - 1].bottomAnchor, constant: 20),
            interestView1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.4),
            interestView1.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            interestView1.heightAnchor.constraint(equalTo: offerViewArray[offerViewArray.count - 1].heightAnchor, multiplier: 0.3),
            
            interestView2.topAnchor.constraint(equalTo: offerViewArray[offerViewArray.count - 1].bottomAnchor, constant: 20),
            interestView2.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.4),
            interestView2.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -30),
            interestView2.heightAnchor.constraint(equalTo: interestView1.heightAnchor),
            
            loanInfoView.topAnchor.constraint(equalTo: interestView2.bottomAnchor, constant: 10),
            loanInfoView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            loanInfoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            loanInfoView.heightAnchor.constraint(equalTo: topView.heightAnchor),
            
            confirmButton.topAnchor.constraint(equalTo: loanInfoView.bottomAnchor, constant: 30),
            confirmButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            confirmButton.widthAnchor.constraint(equalTo:  offerViewArray[0].widthAnchor),
            confirmButton.heightAnchor.constraint(equalToConstant: 50),
            
            rejectButton.topAnchor.constraint(equalTo: confirmButton.bottomAnchor, constant: 20),
            rejectButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            rejectButton.widthAnchor.constraint(equalTo: confirmButton.widthAnchor),
            rejectButton.heightAnchor.constraint(equalToConstant: 50),
            
            closeLabel.topAnchor.constraint(equalTo: rejectButton.bottomAnchor, constant: 20),
            closeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            closeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
        ])
        
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = .white
        
        topView.setupViewLabel(text: "Personal Loan")
        offerViewList = [offerView1,offerView2,offerView3]
        addSubViews()
        addLayout()
        
//        let offerView1Tap = UITapGestureRecognizer(target: self, action: #selector(offerView1Tap(sender:)))
//        let offerView2Tap = UITapGestureRecognizer(target: self, action: #selector(offerView2Tap(sender:)))
//        let offerView3Tap = UITapGestureRecognizer(target: self, action: #selector(offerView3Tap(sender:)))
//
//        offerView1.addGestureRecognizer(offerView1Tap)
//        offerView2.addGestureRecognizer(offerView2Tap)
//        offerView3.addGestureRecognizer(offerView3Tap)
        
        for i in 0...offerViewArray.count - 1 {
           
            
            
            let offerViewTap = UITapGestureRecognizer(target: self, action: #selector(offerViewTap(sender:)))
            offerViewArray[i].addGestureRecognizer(offerViewTap)
            offerViewArray[i].tag = i
            
        }

    }
    
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
      
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        let startColor = CGColor(red: 0.439, green: 0.71, blue: 0.341, alpha: 1)
        let endColor = CGColor(red: 0.056, green: 0.558, blue: 0.317, alpha: 1)

        confirmButton.setGradientBackground(colors: [startColor,endColor])
        
    }
    
    func handleOfferViewTap(index: Int) {
        
        if index > offerViewArray.count {
            return
        }
        
        for i in 0...offerViewArray.count-1 {
            
            if i == index {
                offerViewArray[i].selected()
            } else {
                offerViewArray[i].unselected()
            }
            
        }
    }
    
    @objc func offerViewTap(sender : UITapGestureRecognizer) {
        
        guard let tag = sender.view?.tag else {
            return
        }
        self.handleOfferViewTap(index: tag)
        
    }
    
//    @objc func offerView1Tap(sender : UITapGestureRecognizer) {
//
//        self.handleOfferViewTap(index: 0)
//
//    }
//    @objc func offerView2Tap(sender : UITapGestureRecognizer) {
//
//        self.handleOfferViewTap(index: 1)
//
//    }
//    @objc func offerView3Tap(sender : UITapGestureRecognizer) {
//
//        self.handleOfferViewTap(index: 2)
//
//    }
//
    
    func loadData() {
        
    }
    
    
}
