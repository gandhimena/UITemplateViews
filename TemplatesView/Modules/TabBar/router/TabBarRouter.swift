//
//  TabBarRouter.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class TabBarRouter: TabBarViewRouterProtocol {
    
    static func createTabBarView() -> UINavigationController {
        let navController = UINavigationController(rootViewController: TabBarView())
        guard let view = navController.children.first as? TabBarView else {
            return UINavigationController()
        }
        
        let router = TabBarRouter()
        let presenter = TabBarPresenter()
        let interactor = TabBarInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return navController
        
    }
    
    func showView(from view: TabBarViewProtocol) {
        
    }
    
    
}
