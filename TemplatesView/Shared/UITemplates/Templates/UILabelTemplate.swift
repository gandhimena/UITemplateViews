//
//  UILabel+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/29/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

struct UILabels {
//    enum Custom {
        static var defaults: UILabel {
            return UILabel().style {
                $0.translatesAutoresizingMaskIntoConstraints = false
                $0.text = "Default text"
                $0.textAlignment = .center
                $0.textColor = .white
                $0.numberOfLines = 0
            }
        }
        
        static var defaultsWithAlignment: (_ textAlignment: NSTextAlignment) -> UILabel {
            return { alginment in
                return defaults.style { $0.textAlignment = alginment }
            }
        }
//    }
}
