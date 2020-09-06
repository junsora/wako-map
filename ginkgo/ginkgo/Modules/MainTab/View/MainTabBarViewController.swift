//
//  MainTabBarViewController.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/08.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class MainTabBarViewController: UITabBarController, MainTabView {
    var presenter: MainTabPresenter!
    
    override func viewDidLoad() {
        var viewControllers: [UIViewController] = []
        
        for subViewRouter in presenter.subViewRouters {
            viewControllers.append(subViewRouter.configuredViewController())
        }
                
        self.setViewControllers(viewControllers, animated: false)
    }
    
}

extension MainTabBarViewController: UITabBarControllerDelegate {
    
}
