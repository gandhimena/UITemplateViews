//
//  UIButton+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/6/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIButton {
    func toggle(state: Bool, enable: AssetsIcons, disable: AssetsIcons) {
        guard !state else { return setImage(UIImage.Icons.name(enable), for: .normal) }
        setImage(UIImage.Icons.name(disable), for: .normal)
    }
}
