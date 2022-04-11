//
//  GradientView.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

@IBDesignable class GragientView: UIView {
    
    @IBInspectable var startColor: UIColor = .black {
        didSet{
            self.updateColors()
        }
    }
    
    
    
    
    @IBInspectable var endColor: UIColor = .white {
        didSet{
            self.updateColors()
        }
    }
    
    @IBInspectable var startLocation: CGFloat = 0 {
        didSet{
            self.updateLocation()
        }
    }
    @IBInspectable var endLocation: CGFloat = 1 {
        didSet{
            self.updateLocation()
        }
    }
    @IBInspectable var startPosition: CGPoint = .zero {
        didSet{
            self.updateStartPosition()
        }
    }
    @IBInspectable var endPosition: CGPoint = CGPoint(x: 1, y: 0) {
        didSet{
            self.updateEndPosition()
        }
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    var gradientLayer: CAGradientLayer {
        return self.layer as! CAGradientLayer
    }
    
    
    
    func updateColors() {
        gradientLayer.colors = [startColor.cgColor,endColor.cgColor]
    }
    
    func updateStartPosition() {
        gradientLayer.startPoint = startPosition
    }
    
    func updateEndPosition() {
        gradientLayer.endPoint = endPosition
    }
    
    func updateLocation() {
        gradientLayer.locations = [startLocation as NSNumber, endLocation as NSNumber]
    }
}
