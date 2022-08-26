//
//  ViewController.swift
//  LoanSummaryWithXIB
//
//  Created by Wee on 26/08/2022.
//

import UIKit

class ConsumerDurableVC: UIViewController {
    
    let mainView = DurableView()
    
    private func addLayout() {
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            mainView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor)
        
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.view.addSubview(mainView)
        addLayout()
        
    }
   
}

