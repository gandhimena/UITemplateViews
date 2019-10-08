//
//  FavoriteViewCell.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/6/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class FavoriteViewCell: BaseTableViewCell<HotelInfo> {
    
    let body = UIViews.favoriteViewCellBody
    var hotelName: UILabel? { return body.viewWithTag(.favoriteView_hotelName) as? UILabel }
    var hotelLocation: UILabel? { return body.viewWithTag(.favoriteView_hotelLocation) as? UILabel }
    var hotelDistance: UILabel? { return body.viewWithTag(.favoriteView_hotelDistance) as? UILabel }
    var hotelPrice: UILabel? { return body.viewWithTag(.favoriteView_hotelPrice) as? UILabel }
    var hotelTimeFrame: UILabel? { return body.viewWithTag(.favoriteView_hotelTimeFrame) as? UILabel }
    
    override var item: HotelInfo!{
        didSet {
            hotelName?.text = self.item.name
            hotelLocation?.text = self.item.address
            hotelDistance?.text = self.item.distance
            hotelPrice?.text = self.item.price
            hotelTimeFrame?.text = self.item.timeFrame
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        selectionStyle = .none
        self.addSubview(body)
        body.left(10).top(10).right(10).bottom(10)
        body.applyOptimizationShadow()
        
    }
}
