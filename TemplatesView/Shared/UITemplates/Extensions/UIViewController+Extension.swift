//
//  UIViewController.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/29/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

extension UIViewController {
    func navBarBackgroundGradient(colors: [UIColor], position: UINavigationBar.GradientPosition) {
        DispatchQueue.main.async {
            self.navigationController?.navigationBar.setGradientBackground(colors: colors, position: position)
        }
    }
    
    func navTitleViewText(_ title: String, _ subtitle: String?){
        let titleView = UIViews.navTitleView(NavTitleView(title: title, description: subtitle))
        navigationItem.titleView = titleView
    }
    
    func navTitleViewImage(_ image: AssetsIcons) {
        let titleView = UIViews.navTitleViewImage(image)
        navigationItem.titleView = titleView
    }
    
    func hideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
