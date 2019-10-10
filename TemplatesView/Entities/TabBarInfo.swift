//
//  TabBarInfo.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/10/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

struct TabBarInfo: Codable {
    var title: String
    
    enum CodingKeys: String, CodingKey {
        case title
    }
}
