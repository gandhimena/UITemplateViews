//
//  NavTitleView.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

struct NavTitleView {
    var title: String
    var description: String?
    
    init(title: String, description: String? = nil) {
        self.title = title
        self.description = description
    }
}
