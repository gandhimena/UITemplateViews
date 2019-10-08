//
//  UIElements.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/25/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

struct Style<View: UIView> {
    
    typealias Styler = (View) -> Void
    private let style: Styler
    
    init(_ style: @escaping Styler) {
        self.style = style
    }
    
    func apply(to view: View) {
        style(view)
    }
}
