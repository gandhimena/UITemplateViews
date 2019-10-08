//
//  UINavigationItem+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/29/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UINavigationItem {
    func leftBarButtonItems(_ buttons: UIView...) {
        self.leftBarButtonItems = buttons.map { UIBarButtonItem(customView: $0) }
    }
    
    func rightBarButtonItemsCustom(_ buttons: UIView...) {
        self.rightBarButtonItems = buttons.map { UIBarButtonItem(customView: $0) }
    }
}
