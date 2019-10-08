//
//  HomeView.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/3/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

class HomeView: BaseTableViewController<HomeViewCell, User> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = homeMockList
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? HomeViewCell else {
            return UITableViewCell()
        }
        
        let item = items[indexPath.row]
        cell.item = item
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? HomeViewCell
        cell?.item.isSelected = !cell!.item.isSelected
        cell?.buttonRight?.toggle(state: cell!.item.isSelected, enable: .tabBar_star_fill, disable: .tabBar_star)
        
    }
    
}

