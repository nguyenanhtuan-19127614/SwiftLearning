//
//  MoreDetailView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

class ContractDetailView: UIView {
    
    private let label: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "View contract details"
        label.textColor = UIColor(red: 81/255, green: 153/255, blue: 91/255, alpha: 1)
        return label
        
    }()
    
    private let image: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "contactDetail")
        
        imageView.contentMode = .scaleToFill
        return imageView
        
    }()
    
    private func addSubViews() {
        
        self.addSubview(label)
        self.addSubview(image)
        
    }
    
    private func addLayout() {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            label.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            image.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            image.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            image.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 5),
        
        ])
        
        label.sizeToFit()
      
    }
    
    //MARK: Overide Init
    override init(frame: CGRect) {
        
        super.init(frame: frame)
      
        addSubViews()
        addLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      
    }
}
