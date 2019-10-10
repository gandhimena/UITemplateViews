//
//  Constants.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/26/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

enum AssetsIcons: String {
    case launching = "launchingBackground"
    
    case user_image = "userDefault"
    case left_arrow = "asfa"
    case right_arrow = "htr"
    case wrong = "tewt"
    
    //MARK - TabBar
    case tabBar_home = "tabBar_home"
    case tabBar_star = "tabBar_star"
    case tabBar_heart = "tabBar_heart"
    case tabBar_notif_bell = "tabBar_notif_bell"
    case tabBar_profile = "tabBar_profile"
    case tabBar_star_fill = "tabBar_start_fill"
    
    //MARK - Map
    case map_marker_1 = "map_pin_1"
    
    //MARK - CommonIcons
    case star_empty = "star_empty"
    case star_fill = "star_fill"
    
    //MARK - Logo
    case template_logo = "template_logo"
}

enum HomeViewIdentifiers: String {
    case homeView_userImage
    case homeView_username
    case homeView_description
    case homeView_rightButton
    case homeView_name
}

enum LikesViewIdentifier: String {
    case likesView_email
}

enum TitleSubtitleCellIdentifiers: String {
    case titleSubtitleView_title
    case titleSubtitleView_subtitle
}

enum NavigationIdentifier: String {
    case nav_title
    case nav_subtitle
}
