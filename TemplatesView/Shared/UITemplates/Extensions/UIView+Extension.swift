//
//  UIView+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/6/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIView {
    func viewWithTag(_ identifier: HomeViewIdentifiers) -> UIView? {
        return self.viewWithTag(identifier.hashValue)
    }
    
    func viewWithTag(_ identifier: TitleSubtitleCellIdentifiers) -> UIView? {
        return self.viewWithTag(identifier.hashValue)
    }
    
    func viewWithTag(_ identifier: FavoriteViewIndentifiers) -> UIView? {
        return self.viewWithTag(identifier.hashValue)
    }
    
    func shadow(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
    }
    
    func applyOptimizationShadow() {
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
    func cornerRadius(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
