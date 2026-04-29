//
//  SplashViewController.swift
//  Reminder
//
//  Created by Gabriel Monte Olivio Martins on 26/12/25.
//

import Foundation
import UIKit


class SplashViewController: UIViewController {
    let contentView = SplashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        self.view.addSubview(contentView)
        self.navigationController?.isNavigationBarHidden = true	
        
        setUpConstraints()
    }
    
    private func setUpConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
