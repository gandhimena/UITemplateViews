//
//  UITextField+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/28/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension NSAttributedString {
    func with(_ text: String, color: UIColor) -> NSAttributedString {
        let attribure = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor: color])
        return attribure
    }
}

struct UITextFields {
    static var defaults: UITextField {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Type text"
        textfield.borderStyle = .roundedRect
        return textfield
    }
    
    static var withBorder: UITextField {
        let textfield = defaults
        textfield.backgroundColor = .none
        textfield.borderStyle = .line
        textfield.clipsToBounds = true
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.gray.cgColor
        textfield.layer.cornerRadius = 5
        textfield.returnKeyType = .done
        textfield.keyboardType = .default
        textfield.attributedPlaceholder = NSAttributedString(string: "type text", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textfield.textColor = .white
        
        return textfield
    }
}
