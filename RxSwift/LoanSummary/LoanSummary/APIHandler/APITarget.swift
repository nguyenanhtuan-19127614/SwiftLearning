//
//  APITarget.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation

enum HttpMethod: String {
    
    case GET
    case POST
    
}

protocol APITarget {
    
    var baseURL: String {get}
    var method: HttpMethod {get}
    
    
}

struct LoanSummaryAPI: APITarget {
   
    var baseURL: String {
        return ""
    }
    
    var method: HttpMethod {
        return .GET
    }
   
}
