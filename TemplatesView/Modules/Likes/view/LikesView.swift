// 
//  LikesView.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//
//
import UIKit

class LikesView: UIViewController {
    
    let body = UIViews.likesViewbody
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(body)
        body.left(0).top(0).right(0).bottom(0)
        
    }
    
}
