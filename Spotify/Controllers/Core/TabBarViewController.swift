//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Amr El-Fiqi on 28/05/2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize View Controller
        let homeVC =  HomeViewController()
        let searchVC = SearchViewController()
        let libraryVC = LibraryViewController()
        
        // Set View Controller Title
        homeVC.title = "Browse"
        searchVC.title = "Search"
        libraryVC.title = "Library"
        
        // Set large title display mode for each view controller
        [homeVC, searchVC, libraryVC].forEach
            { $0.navigationItem.largeTitleDisplayMode = .always }
        
        // Initialize navigation controllers
        let homeNav = UINavigationController(rootViewController: homeVC)
        let searchNav = UINavigationController(rootViewController: searchVC)
        let libraryNav = UINavigationController(rootViewController: libraryVC)
        
        // Set Tab Bar icons
        homeNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        searchNav.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        libraryNav.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1 )
        
        // Set prefersLargeTitles for each navigation controller
        [homeNav, searchNav, libraryNav].forEach
        { $0.navigationBar.prefersLargeTitles = true }
        
        // Set the view controllers stack
        setViewControllers([homeNav, searchNav, libraryNav], animated: true)
    }

}
