//
//  UIView+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 9/28/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

struct UIViews {
    typealias viewType<T> = (_ type: T) -> UIView
    
    static var viewDefault: UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static var viewContainer: UIView {
        let view = viewDefault
        view.backgroundColor = .none
        return view
    }
    
    static var navTitleView: viewType<NavTitleView> {
        return { titleView in
            let mainContainer = viewContainer
            
            //stackFrame
            let stackView = UIStatckViews.stackViewDefault
            stackView.frame = CGRect(x: 0, y: 0, width: CGFloat(50).widthPercentage, height: 40)
            
            //title
            let title = UILabels.defaults.style {
                $0.text = titleView.title
                $0.font = UIFont.boldSystemFont(ofSize: 18)
            }
            title.tag = NavigationIdentifier.nav_title.hashValue
            
            //subTitle
            let description = UILabels.defaults.style {
                $0.text = titleView.description
                $0.font = UIFont.systemFont(ofSize: 10)
            }
            description.tag = NavigationIdentifier.nav_subtitle.hashValue
            
            stackView.addArrangedSubview(title)
            stackView.addArrangedSubview(description)
            
            mainContainer.addSubview(stackView)
            
            stackView.fillVertically().fillHorizontally()
            
            return mainContainer
        }
    }
    
    static var navTitleViewImage: (_ image: AssetsIcons) -> UIView {
        return { image in
            let mainContainer = viewContainer
            
            //stackFrame
            let imageView = UIImageViews.default_WithImage(image)
            
            mainContainer.addSubview(imageView)
            imageView.fillVertically().width(CGFloat(60).widthPercentage).centerHorizontally()
            return mainContainer
        }
    }
    
    
    static var titleAndSubstitleView: UIView {
        let mainContainer = viewContainer
        
        let title = UILabels.defaultsWithAlignment(.left).style { $0.textColor = .gray }
        let subtitle = UILabels.defaultsWithAlignment(.left).style { $0.textColor = .gray }
        
        title.tag = TitleSubtitleCellIdentifiers.titleSubtitleView_title.hashValue
        subtitle.tag = TitleSubtitleCellIdentifiers.titleSubtitleView_subtitle.hashValue
        
        mainContainer.addSubview(title)
        mainContainer.addSubview(subtitle)
        
        title.left(0).right(0).top(0).height(40)
        subtitle.left(0).right(0).bottom(0).height(40)
        
        return mainContainer
    }
}
