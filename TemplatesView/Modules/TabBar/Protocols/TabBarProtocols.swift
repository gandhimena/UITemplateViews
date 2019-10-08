//
//  TabBarProtocols.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

protocol TabBarViewRouterProtocol: class {
    static func createTabBarView() -> UINavigationController
    
    func showView(from view: TabBarViewProtocol)
}

protocol TabBarViewProtocol: class {
    var presenter: TabBarViewPresenterProtocol? { get set }
    
    func viewWillAppears()
}

protocol TabBarViewPresenterProtocol: class {
    var router: TabBarViewRouterProtocol? { get set }
    var view: TabBarViewProtocol? { get set }
    var interactor: TabBarViewInteractorInputProtocol? { get set }
    
    func viewWillAppear()
    func showView()
}

protocol TabBarViewInteractorInputProtocol: class {
    var presenter: TabBarViewInteractorOutputProtocol? { get set }
}

protocol TabBarViewInteractorOutputProtocol: class {
    func nameFunc()
}
