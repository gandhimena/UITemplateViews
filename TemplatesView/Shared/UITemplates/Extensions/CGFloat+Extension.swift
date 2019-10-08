//
//  CGFloat+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/8/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension CGFloat {
    var widthPercentage: CGFloat {
        return (UIScreen.main.bounds.width / 100) * self
    }
    
    var heightPercentage: CGFloat {
        return (UIScreen.main.bounds.height / 100) * self
    }
}

//extension Int {
//    var widthPercentage: Int {
//        return Int((UIScreen.main.bounds.width / 100)) * self
//    }
//}
