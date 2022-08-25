//
//  InfoView.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation
import UIKit
class InfoView: UIView {
    
    private let infoLabel: UILabel = {
        
        let label = UILabel()
        label.font = label.font.withSize(18)
        label.textColor = UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1)
        return label
        
    }()
    
    private let infoValue: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "######"
        return label
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(infoLabel)
        self.addSubview(infoValue)
        
    }
    
    private func addLayout() {
        
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
    
    func setInfoLabel(text: String) {
        self.infoLabel.text = text
    }
    
    func setInfoValue(value: String) {
        self.infoValue.text = value
    }
}
