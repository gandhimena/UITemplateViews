//
//  User.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class User {
    var image: UIImage?
    var name: String?
    var subTitle: String?
    var isSelected: Bool
    
    init(image_url: UIImage? = nil,
         name: String? = nil,
         subTitle: String? = nil,
         isSelected: Bool) {
        self.image = image_url
        self.name = name
        self.subTitle = subTitle
        self.isSelected = isSelected
    }
    
    func setSelect(_ flag: Bool) {
        self.isSelected = flag
    }
}
