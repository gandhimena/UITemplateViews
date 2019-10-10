//
//  LikesViewBody.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/8/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIViews {
    static var likesViewbody: UIView {
        let mainContainer = viewContainer
        
        let formLoginViews = formLoginView
        formLoginView.backgroundColor = .orange
        
        mainContainer.addSubview(formLoginViews)
        
        formLoginViews.width(200).height(500).centerHorizontally().centerVertically()
        
        return mainContainer
    }
    
    static var formLoginView: UIView {
        let mainContainer = viewContainer
        let emailTextField = textFieldWithTitleView
        let passwordTextField = textFieldWithTitleView
        let usernameTextField = textFieldWithTitleView
        
        emailTextField.tag = LikesViewIdentifier.likesView_email.hashValue
        
        mainContainer.addSubview(emailTextField)
        mainContainer.addSubview(passwordTextField)
        mainContainer.addSubview(usernameTextField)
        
        
        emailTextField.height(50).top(0).left(0).right(0)
        passwordTextField.height(50).left(0).right(0).top(90)
        usernameTextField.height(50).left(0).right(0).top(180)
        return mainContainer
    }
    
    static var textFieldWithTitleView: UIView {
        let mainContainer = viewContainer
        let title = UILabels.defaultsWithAlignment(.left).style {
            $0.textColor = .gray
        }
        let textField = UITextFields.withBorder.style {
            $0.layer.borderWidth = 3
        }
        
        mainContainer.addSubview(title)
        mainContainer.addSubview(textField)
        
        title.left(0).top(0).height(30).right(0)
        textField.fillHorizontally().height(40).top(40)
        return mainContainer
    }
}
