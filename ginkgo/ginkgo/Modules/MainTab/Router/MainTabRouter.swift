//
//  MainTabRouter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/09.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class MainTabRouter: MainTabWireframe {
    var viewController: UIViewController?
    
    static func assembleModule(_ wireFrames:TabBarInterface...) -> UIViewController {
        let view = R.storyboard.mainTab.mainTabBarViewController()
//        let interactor =
        let presenter = MainTabPresenter()
        let router = MainTabRouter()
        
        let navigation = UINavigationController(rootViewController: view!)
        
        presenter.view = view
//        presenter.interactor = interactor
        presenter.router = router
        presenter.subViewRouters = wireFrames
        
//        interactor.output = presenter
        
        view!.presenter = presenter
        
        router.viewController = view
        
        return navigation
    }
}
