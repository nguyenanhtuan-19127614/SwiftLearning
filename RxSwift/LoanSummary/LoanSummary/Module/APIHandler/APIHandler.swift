//
//  APIHandler.swift
//  LoanSummary
//
//  Created by Wee on 24/08/2022.
//

import Foundation
import RxSwift

class APIHandler {
    
    private let baseURL: URL?
    private let session: URLSession
    private var dataTask: URLSessionDataTask? = nil
    
    //Constant (Use to config sessoin)
    private let timeoutForRequest = TimeInterval(30)
    private let timeoutForResource = TimeInterval(60)
       
    
    init(baseURL: URL?) {
        
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.timeoutIntervalForRequest = timeoutForRequest
        sessionConfig.timeoutIntervalForResource = timeoutForResource
        
        self.session = URLSession(configuration: sessionConfig)
        self.baseURL = baseURL
        
    }
  
    func callAPI<T: Codable>(completion: @escaping ( Result<T,Error> ) -> Void) {
        
        guard let baseURL = baseURL else {
            return
        }
        
        dataTask = self.session.dataTask(with: baseURL, completionHandler: {
            
            (data, response, error) in
            do {
                
                guard let data = data else {
                    return
                }

                let decoder = JSONDecoder()
                let model = try decoder.decode(T.self, from: data)
                completion(.success(model))
              
                
            } catch let err {
                
                completion(.failure(err))
                
            }
            
        })
        
        dataTask?.resume()
        
    }
    
}

