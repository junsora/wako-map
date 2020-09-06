//
//  LoginRouter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/02.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class LoginRouter: LoginWireframe {

    var viewController: UIViewController?

    /** 画面構成を作る */
    static func assembleModule() -> UIViewController {
        let view = LoginViewController()
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LoginRouter()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        view.presenter = presenter
        
        router.viewController = view
        
        return view
    }
    
    /** 画面遷移する */
    func presentMap() {
//        var routerList = [MapRouter(),C]
        let mainTabViewController = MainTabRouter.assembleModule(MapRouter())
        self.viewController?.present(mainTabViewController, animated: true, completion: nil)
    }
}
