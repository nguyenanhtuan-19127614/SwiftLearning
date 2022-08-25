//
//  LoanTopView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

class LoanTopView: UIView {
    
    //First Label on top
    private let viewLabel: UILabel = {
        let label = UILabel()
        label.text = "Consumer Durable Loan"
        label.font = UIFont.boldSystemFont(ofSize: 30)
       
        return label
    }()
    
    //offer expired label
    //label
    private let expiredLabel: UILabel = {
        let label = UILabel()
        
        let htmlString = "<span style=\"font-size: 25\"> Offer expires in <span style=\"color:#50A050\"><b>{n} days</b></span> </span>"
        
        label.renderHTMLAtribute(htmlString: htmlString)
        return label
    }()
    
    //app id label
    
    //label
    private let appIDLabel: UILabel = {
        let label = UILabel()
        label.text = "App ID: "
        label.font = label.font.withSize(12)
        return label
    }()
    //value
    private let appIDValue: UILabel = {
        let label = UILabel()
        label.text = "########"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    //container
    private let appIDContainer: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 0.5)
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    //let appID = AppIDView()
    
    private func addSubViews() {
        
        self.addSubview(viewLabel)
        self.addSubview(expiredLabel)
        self.addSubview(appIDContainer)
        appIDContainer.addSubview(appIDLabel)
        appIDContainer.addSubview(appIDValue)
    }
    
    private func addLayout() {
        
        viewLabel.translatesAutoresizingMaskIntoConstraints = false
        expiredLabel.translatesAutoresizingMaskIntoConstraints = false
        appIDValue.translatesAutoresizingMaskIntoConstraints = false
        appIDLabel.translatesAutoresizingMaskIntoConstraints = false
        appIDContainer.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
            
            viewLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            viewLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
           
            expiredLabel.topAnchor.constraint(equalTo: viewLabel.bottomAnchor, constant: 10),
            expiredLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            
            appIDContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            appIDContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20 ),
            appIDContainer.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3),
            appIDContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/6),
            
            appIDLabel.leadingAnchor.constraint(equalTo: appIDContainer.leadingAnchor, constant: 10),
            appIDLabel.heightAnchor.constraint(equalTo: appIDContainer.heightAnchor),
            appIDValue.trailingAnchor.constraint(equalTo: appIDContainer.trailingAnchor, constant: -10),
            appIDValue.heightAnchor.constraint(equalTo: appIDContainer.heightAnchor),
            
        ])
        
        viewLabel.sizeToFit()
        expiredLabel.sizeToFit()
        appIDLabel.sizeToFit()
        appIDValue.sizeToFit()
        
        
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
    
    func loadData(appID: String?, expireDay: String?) {
        
        if let appID = appID  {
            appIDValue.text = appID
        }
        
        
        if let expireDay = expireDay {
            
            let htmlExpireLabel = "<span style=\"font-size: 25\"> Offer expires in <span style=\"color:#50A050\"><b>\(expireDay) days</b></span> </span>"
            
            expiredLabel.renderHTMLAtribute(htmlString: htmlExpireLabel)
            
        }
        
    }
    
   
}



