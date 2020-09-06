//
//  ContentsListRouter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/16.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class ContentsListRouter: ContentsListWireframe {
    var viewController: UIViewController?
    
    func configuredViewController() -> UIViewController {
        let view = R.storyboard.contentsListTable.contentsList()
//        let presenter = MapPresenter()
        let router = ContentsListRouter()
//        let interactor = MapInteractor()
        
//        presenter.view = view
//        presenter.router = router
//        presenter.interactor = interactor
//        
//        interactor.output = presenter
//        
//        view?.presenter = presenter
        
        router.viewController = view
        
        return view!

    }
    
    func pushContentsDetail(_ mapContents: MapContents) {
        viewController?.navigationController?.pushViewController(ContentsDetailRouter.assembleModule(mapContents), animated: true)
    }

}
