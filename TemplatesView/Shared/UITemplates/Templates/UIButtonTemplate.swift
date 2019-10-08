//
//  UIButton+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/28/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation
import UIKit

struct UIButtons {
    static var buttonType: (_ type: UIButton.ButtonType) -> UIButton {
        return { type in
            let button = UIButton(type: type)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.backgroundColor = .magenta
            button.setTitle("default", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.titleLabel?.numberOfLines = 0
            return button
        }
    }
    
    static var buttonImage: (_ type: UIButton.ButtonType, _ image: AssetsIcons) -> UIButton {
        return { type, iconName in
            let button = buttonType(type)
            button.backgroundColor = nil
            button.setTitle(nil, for: .normal)
            button.setImage(UIImage.Icons.name(iconName), for: .normal)
            return button
        }
    }
    
    
    static var navButtonItem: (_ icon: AssetsIcons) -> UIButton {
        return { iconName in
            let button = buttonType(.system)
            button.setTitle(nil, for: .normal)
            button.backgroundColor = .none
            button.setImage(UIImage.Icons.name(iconName), for: .normal)
            return button
        }
    }    
}
