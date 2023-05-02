//
//  ViewController.swift
//  maraphon#1
//
//  Created by Даниил Ермоленко on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupSquareView()
    }
    
    override func viewDidLayoutSubviews() {
        
        squareView.setGradientBackground()
    }
    
    
    func setupSquareView() {
        
        view.addSubview(squareView)
        
        squareView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            squareView.heightAnchor.constraint(equalToConstant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
}

