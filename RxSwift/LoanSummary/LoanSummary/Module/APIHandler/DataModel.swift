//
//  DataModel.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation

struct DataModel: Codable {
    
    let page: Int?
    let perPage: Int?
    let total: Int?
    let totalPages: Int?
    let userData: [UserDetail?]?
    
    enum CodingKeys: String, CodingKey {
        
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case userData = "data"
        
    }
    
}

struct UserDetail: Codable {
    
    let id: Int?
    let email: String?
    let firstName: String?
    let lastName: String?
    let avatar: String?
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
        
    }
}
