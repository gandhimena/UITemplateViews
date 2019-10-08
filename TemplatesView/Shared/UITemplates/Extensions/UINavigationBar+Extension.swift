//
//  UINavigationBar+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/29/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    enum GradientPosition {
        case topToBottom
        case leftToRight
        case diagonalLeft
        case diagonalRight
    }
    
    func setGradientBackground(colors: [UIColor],
                               startPoint: CAGradientLayer.Point,
                               endPoint: CAGradientLayer.Point) {
        var updatedFrames = bounds
        updatedFrames.size.height += self.frame.origin.y
        let gradientLayer = CAGradientLayer(frame: updatedFrames, colors: colors, startPoint: startPoint, endPoint: endPoint)
        setBackgroundImage(gradientLayer.createBackgroundImage(), for: .default)
    }
    
    func setGradientBackground(colors: [UIColor], position: GradientPosition) {
        var startPoint = CAGradientLayer.Point.topLeft
        var endPoint = CAGradientLayer.Point.topRight
        
        switch position {
        case .topToBottom:
            startPoint = CAGradientLayer.Point.topLeft
            endPoint = CAGradientLayer.Point.bottomLeft
        case .diagonalLeft:
            startPoint = CAGradientLayer.Point.bottomLeft
            endPoint = CAGradientLayer.Point.topRight
        case .diagonalRight:
            startPoint = CAGradientLayer.Point.topLeft
            endPoint = CAGradientLayer.Point.bottomRight
        default:()
        }
        
        setGradientBackground(colors: colors, startPoint: startPoint, endPoint: endPoint)
    }
    
    
}
