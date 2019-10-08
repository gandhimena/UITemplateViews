//
//  HomeViewBody.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit


extension UIViews {
    
    static var homeViewCellBody: UIView {
        let mainContainer = viewContainer
        
        let userImage = UIImageViews.default_image.style { $0.image = UIImage.Icons.name(.user_image)}
//        let username = UILabels.defaultsWithAlignment(.left).style { $0.textColor = .gray }
        let titleSubTitleView = titleAndSubstitleView
        let buttonRight = UIButtons.buttonImage(.custom, .tabBar_star)
        let username = titleSubTitleView.viewWithTag(.titleSubtitleView_title) as? UILabel
        let description = titleSubTitleView.viewWithTag(.titleSubtitleView_subtitle) as? UILabel
        
        userImage.tag = HomeViewIdentifiers.homeView_userImage.hashValue
        username?.tag = HomeViewIdentifiers.homeView_username.hashValue
        description?.tag = HomeViewIdentifiers.homeView_description.hashValue
        buttonRight.tag = HomeViewIdentifiers.homeView_rightButton.hashValue
        
        mainContainer.addSubview(userImage)
//        mainContainer.addSubview(username)
        mainContainer.addSubview(titleSubTitleView)
        mainContainer.addSubview(buttonRight)
        
        userImage.left(15).width(45).height(45).centerVertically()
//        username.left(70).right(70).centerVertically().height(60)
        titleSubTitleView.left(70).right(70).centerVertically().height(60)
        buttonRight.right(15).width(50).height(30).centerVertically()
        return mainContainer
    }
    
}
