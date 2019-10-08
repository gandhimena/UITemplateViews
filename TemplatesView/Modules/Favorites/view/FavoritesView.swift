//
//  FavoritesView.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class FavoritesView: BaseTableViewController<FavoriteViewCell, HotelInfo> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = FavoriteHotelList
        tableView.separatorStyle = .none
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? FavoriteViewCell else {
            return UITableViewCell()
        }
        cell.item = items[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
