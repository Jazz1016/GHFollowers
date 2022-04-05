//
//  GFTabBarControlller.swift
//  GHFollowers
//
//  Created by James Lea on 4/3/22.
//

import UIKit

class GFTabBarControlller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavoritesNC()]
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC() -> UINavigationController{
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }
    
    func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        
        UITabBar.appearance().backgroundColor = UIColor(white: 1, alpha: 0.5)
        
        
        tabBar.tabBar.isTranslucent = true
        return tabBar
    }

}
