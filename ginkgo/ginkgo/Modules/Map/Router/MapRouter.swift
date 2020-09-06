//
//  MapRouter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/16.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class MapRouter: MapWireframe {

    var viewController: UIViewController?
    
    func configuredViewController() -> UIViewController {
        //done DI
        let view = R.storyboard.map.mapViewController()
        let presenter = MapPresenter()
        let router = MapRouter()
        let interactor = MapInteractor()
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        view?.presenter = presenter
        
        router.viewController = view
        
        return view!
    }
    
    func pushContentsDetail(_ mapContents: MapContents) {
        // Push ContentsDeteail
        viewController?.navigationController?.pushViewController(ContentsDetailRouter.assembleModule(mapContents), animated: true)
    }
    
    
}
