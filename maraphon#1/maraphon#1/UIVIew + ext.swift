//
//  UIVIew + ext.swift
//  maraphon#1
//
//  Created by Даниил Ермоленко on 02.05.2023.
//

import UIKit

extension UIView {
    
    func setGradientBackground() {
        let colorTop =  UIColor.magenta
        let colorBottom = UIColor.purple

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.frame = self.bounds
        gradientLayer.cornerRadius = 10
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 4.0
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.masksToBounds = false

        self.layer.insertSublayer(gradientLayer, at: 0)

        }
    
}
