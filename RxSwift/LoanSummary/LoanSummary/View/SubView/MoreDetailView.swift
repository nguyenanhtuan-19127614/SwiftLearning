//
//  MoreDetailView.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit
class MoreDetailView: UIView {
    
    let label: UILabel = {
        
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "More details"
        label.textColor = UIColor(red: 81/255, green: 153/255, blue: 91/255, alpha: 1)
        return label
        
    }()
    
    let image: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "moreDetail")
        
        imageView.contentMode = .scaleToFill
        return imageView
        
    }()
    
    func addSubViews() {
        
        self.addSubview(label)
        self.addSubview(image)
        
    }
    
    func addLayout() {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            label.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            image.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            image.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 2/3),
            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            image.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        
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
