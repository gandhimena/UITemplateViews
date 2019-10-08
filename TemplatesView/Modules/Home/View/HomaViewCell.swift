//
//  HomaViewCell.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class HomeViewCell: BaseTableViewCell<User> {
    
    let body = UIViews.homeViewCellBody
    
    var userImager: UIImageView? { return body.viewWithTag(.homeView_userImage) as? UIImageView }
    var username: UILabel? { return body.viewWithTag(.homeView_username) as? UILabel }
    var subtitle: UILabel? { return body.viewWithTag(.homeView_description) as? UILabel }
    var buttonRight: UIButton? { return body.viewWithTag(.homeView_rightButton) as? UIButton }
    
    override var item: User! {
        didSet {
            userImager?.image = self.item.image
            username?.text = self.item.name
            subtitle?.text = "subtitle"
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(body)
        selectionStyle = .none
        body.left(0).top(0).right(0).bottom(0)
    }
    
}
