//
//  ProductInfo.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit


class LoanInfoView: UIView {
    
    private let cashView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Cash amount")
        return view
        
    }()

   
    private let insuranceView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Insurance Fee")
        return view
        
    }()
    
    private let dueDateView: InfoView = {
        
        let view = InfoView()
        view.setInfoLabel(text: "Due date")
        return view
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(cashView)
        self.addSubview(insuranceView)
        self.addSubview(dueDateView)
        
        
    }
    
    private func addLayout() {
        
        cashView.translatesAutoresizingMaskIntoConstraints = false
        insuranceView.translatesAutoresizingMaskIntoConstraints = false
        dueDateView.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
        
            cashView.topAnchor.constraint(equalTo: self.topAnchor),
            cashView.widthAnchor.constraint(equalTo: self.widthAnchor),
            cashView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/3),
            
            insuranceView.topAnchor.constraint(equalTo: cashView.bottomAnchor),
            insuranceView.widthAnchor.constraint(equalTo: self.widthAnchor),
            insuranceView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/3),
            
            dueDateView.topAnchor.constraint(equalTo: insuranceView.bottomAnchor),
            dueDateView.widthAnchor.constraint(equalTo: self.widthAnchor),
            dueDateView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/3),
        
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
