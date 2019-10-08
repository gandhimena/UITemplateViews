//
//  UIStackViews.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/8/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

struct UIStatckViews {
    
    static var stackViewDefault: UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }
}
