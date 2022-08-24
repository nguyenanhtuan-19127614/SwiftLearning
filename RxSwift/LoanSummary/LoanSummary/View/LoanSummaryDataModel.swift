//
//  LoanSummaryDataModel.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation

struct LoanSummaryDataModel: Codable {
    
    let expireDay: String
    let appID: String
    
    enum CodingKeys: String, CodingKey {
        
        case expireDay
        case appID
        
    }
    
    
}
