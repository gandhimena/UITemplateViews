//
//  TabBarPresenter.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/2/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class TabBarPresenter: TabBarViewPresenterProtocol {
    var router: TabBarViewRouterProtocol?
    var view: TabBarViewProtocol?
    var interactor: TabBarViewInteractorInputProtocol?
    
    func viewWillAppear() {
        view?.viewWillAppears()
    }
    
    func showView() {
        
    }
    
}

extension TabBarPresenter: TabBarViewInteractorOutputProtocol {
    func nameFunc() {
        
    }
    
    
}
