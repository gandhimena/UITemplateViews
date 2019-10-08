//
//  UIImageView+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/28/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

struct UIImageViews {
    static var default_image: UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    static var default_WithImage: (_ Image: AssetsIcons) -> UIImageView {
        return { image in
            let imageView = default_image
            imageView.image = UIImage.Icons.name(image)
            return imageView
        }
        
    }
}
