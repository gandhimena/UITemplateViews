//
//  FavoriteViewBody.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/6/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit
import Stevia

extension UIViews {
    static var favoriteViewCellBody: UIView {
        let mainContainer = viewContainer
        mainContainer.backgroundColor = .white
        mainContainer.shadow(color: .gray, opacity: 0.5, offset: .zero, radius: 10)
        mainContainer.layer.cornerRadius = 10
        
        let image = UIImageViews.default_WithImage(.launching).style {
            $0.contentMode = .scaleAspectFill
            $0.layer.cornerRadius = 10
        }
        
        let infoContainer = favoriteInfoContainer
        
        mainContainer.addSubview(image)
        mainContainer.addSubview(infoContainer)
        
        image.left(0).fillVertically().width(100)
        infoContainer.right(0).fillVertically().left(100)
        return mainContainer
    }
    
    static var favoriteInfoContainer: UIView {
        let mainContainer = viewContainer
        
        let titleAndSubtitle = titleAndSubstitleView
        let distanceAnPrices = distanceAndPrice
        let rankTimeFrame = rankAndTimeFrame
        
        let hotelName = titleAndSubtitle.viewWithTag(.titleSubtitleView_title) as? UILabel
        let hotelLoc = titleAndSubtitle.viewWithTag(.titleSubtitleView_subtitle) as? UILabel
        
        hotelName?.style {
            $0.font = UIFont.boldSystemFont(ofSize: 20)
            $0.textColor = .black
        }
        
        hotelName?.tag = FavoriteViewIndentifiers.favoriteView_hotelName.hashValue
        hotelLoc?.tag = FavoriteViewIndentifiers.favoriteView_hotelLocation.hashValue
        
        mainContainer.addSubview(titleAndSubtitle)
        mainContainer.addSubview(distanceAnPrices)
        mainContainer.addSubview(rankTimeFrame)
        
        titleAndSubtitle.left(10).top(0).height(70)
        distanceAnPrices.bottom(40).left(10).height(60).right(10)
        rankTimeFrame.bottom(10).right(10).height(60).left(10)
        
        return mainContainer
    }
    
    static var distanceAndPrice: UIView {
        let mainContainer = viewContainer
        
        let distanceView = favoriteDistanceView
        
        let hotelPrice = UILabels.defaultsWithAlignment(.right).style {
            $0.textColor = .black
            $0.font = UIFont.boldSystemFont(ofSize: 20)
        }
        hotelPrice.tag = FavoriteViewIndentifiers.favoriteView_hotelPrice.hashValue
        
        mainContainer.addSubview(distanceView)
        mainContainer.addSubview(hotelPrice)
        
        distanceView.left(0).bottom(0).height(30).right(100)
        hotelPrice.right(0).bottom(0).height(30).width(100)
        
        return mainContainer
    }
    
    static var favoriteDistanceView: UIView {
        let mainContainer = viewContainer
        
        let locationIcon = UIImageViews.default_WithImage(.map_marker_1)
        let textAddress = UILabels.defaultsWithAlignment(.left).style {$0.textColor = .gray}
        
        locationIcon.tag = FavoriteViewIndentifiers.favoriteView_hotelLocationIcon.hashValue
        textAddress.tag = FavoriteViewIndentifiers.favoriteView_hotelDistance.hashValue
        
        mainContainer.addSubview(locationIcon)
        mainContainer.addSubview(textAddress)
        
        locationIcon.left(0).top(0).width(20).height(20).centerVertically()
        textAddress.left(25).top(0).height(25).right(0)
        return mainContainer
    }
    
    static var favoriteRankView: UIView {
        let mainContainer = viewContainer
        let star1 = UIButtons.buttonImage(.custom, .star_fill)
        let star2 = UIButtons.buttonImage(.custom, .star_fill)
        let star3 = UIButtons.buttonImage(.custom, .star_fill)
        let star4 = UIButtons.buttonImage(.custom, .star_fill)
        let star5 = UIButtons.buttonImage(.custom, .star_empty)
        
        mainContainer.addSubview(star1)
        mainContainer.addSubview(star2)
        mainContainer.addSubview(star3)
        mainContainer.addSubview(star4)
        mainContainer.addSubview(star5)
        
        star1.centerVertically().width(20).height(20).left(0)
        star2.centerVertically().width(20).height(20).left(25)
        star3.centerVertically().width(20).height(20).left(50)
        star4.centerVertically().width(20).height(20).left(75)
        star5.centerVertically().width(20).height(20).left(100)
        
        return mainContainer
    }
    
    static var rankAndTimeFrame: UIView {
        let mainContainer = viewContainer
        
        let rankStars = favoriteRankView
        let hotelTimeFrame = UILabels.defaultsWithAlignment(.right).style { $0.textColor = .gray }

        hotelTimeFrame.tag = FavoriteViewIndentifiers.favoriteView_hotelTimeFrame.hashValue

        mainContainer.addSubview(rankStars)
        mainContainer.addSubview(hotelTimeFrame)

        rankStars.left(0).bottom(0).height(40).right(100)
        hotelTimeFrame.right(0).bottom(0).height(40).width(100)
        
        return mainContainer
    }
    
}
