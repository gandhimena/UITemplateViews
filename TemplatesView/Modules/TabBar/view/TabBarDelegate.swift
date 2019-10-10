//
//  TabBarDelegate.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension TabBarView:UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        switch viewController {
        case is HomeView:
            navTitleViewImage(.template_logo)
        case is FavoritesView:
            navTitleViewText("Favorites", "subtitle")
        case is LikesView:
            navTitleViewText("Likes Fot you", nil)
        case is NotifView:
            navTitleViewText("Notifications", nil)
        case is ProfileView:
            navTitleViewText("Profile", nil)
        default:()
            
        }
    }
}
