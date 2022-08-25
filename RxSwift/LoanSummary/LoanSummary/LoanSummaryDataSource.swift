//
//  DataSource.swift
//  LoanSummary
//
//  Created by Wee on 25/08/2022.
//

import Foundation

class LoanSummaryDataSource {
    
    //Request Handler
    private let requestHandler = APIHandler(baseURL: URL(string: "https://reqres.in/api/users"))
    
    //Data Container
    
    //ViewController Delegate
    private var delegate: ViewController?
    
    func setupDelegate(vc: ViewController) {
        
        self.delegate = vc
        
    }
    
    //Fetch Data from API
    func fetchData() {
        
       
        requestHandler.callAPI() {
            
            (result: Result<DataModel,Error>) in
            
            switch result {
            case .success( _):
                //print(success)
                self.delegate?.loadData()
            case .failure(let failure):
                print(failure)
            }
            
        }
        
    }
}
