//
//  UILabelExtension.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import UIKit

extension UILabel {
    
    func renderHTMLAtribute(htmlString: String) {
        
        guard let htmlData = htmlString.data(using: .unicode) else {
            
            return
            
        }
        
        guard let attributeString = try? NSMutableAttributedString(
            data: htmlData,
            options: [.documentType: NSAttributedString.DocumentType.html],
            documentAttributes: nil) else {
                
            return
                
        }
        
        self.attributedText = attributeString
       
    }
}
