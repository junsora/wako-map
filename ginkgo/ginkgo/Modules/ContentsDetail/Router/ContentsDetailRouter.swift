//
//  ContentsDetailRouter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/01.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class ContentsDetailRouter: ContentsDetailWireframe {
    var viewController: UIViewController?
    
    static func assembleModule(_ contents: MapContents) -> UIViewController {
        let view = R.storyboard.contentsDetail.contentsDetailViewController()
        let presenter = ContentsDetailPresenter()
        let router = ContentsDetailRouter()
        
        presenter.view = view
        presenter.router = router
        presenter.contents = contents

        view?.presenter = presenter
        
        router.viewController = view
        
        return view!
    }

    func popContentsDetail() {
        //
    }
}
