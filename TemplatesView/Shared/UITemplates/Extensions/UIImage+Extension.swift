//
//  UIImage+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/26/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIImage {
    enum Icons {
        static var name: (_ name: AssetsIcons) -> UIImage {
            return { UIImage(named: $0.rawValue) ?? UIImage() }
        }
    }
    
}
