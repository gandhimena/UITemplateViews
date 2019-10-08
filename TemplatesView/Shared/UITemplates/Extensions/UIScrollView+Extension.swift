//
//  UIScrollView+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/28/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIScrollView {
    enum Custom {
        static var defaults: UIScrollView {
            let scrollView = UIScrollView()
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            scrollView.backgroundColor = .none
            scrollView.alwaysBounceVertical = true
            return scrollView
        }
    }
}

