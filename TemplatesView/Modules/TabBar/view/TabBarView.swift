//
//  TabBarView.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class TabBarView: UITabBarController {
    var presenter: TabBarViewPresenterProtocol?
    
    let tabBarImages = [ UIImage.Icons.name(.tabBar_home),
                         UIImage.Icons.name(.star_empty),
                         UIImage.Icons.name(.tabBar_heart),
                         UIImage.Icons.name(.tabBar_notif_bell),
                         UIImage.Icons.name(.tabBar_profile)
    ]
    
    let myControllers = [HomeView(),
                        FavoritesView(),
                        LikesView()
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        navTitleViewImage(.template_logo)
        navBarBackgroundGradient(colors: [.blue, .cyan], position: .leftToRight)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
}

extension TabBarView: TabBarViewProtocol {
    
    func viewWillAppears() {
        
        viewControllers = createTabs(controllers: myControllers, images: tabBarImages, numberOfTabs: myControllers.count)
        tabBar.isTranslucent = false
        tabBar.tintColor = .purple
        tabBar.unselectedItemTintColor = .gray
        
    }
    
    func createTabs(controllers: [UIViewController], images: [UIImage?], numberOfTabs: Int) -> [UIViewController] {
            
        (0..<numberOfTabs).forEach {
            controllers[$0].tabBarItem = UITabBarItem(title: "", image: images[$0], tag: $0)
        }
        return controllers
    }
    
}
