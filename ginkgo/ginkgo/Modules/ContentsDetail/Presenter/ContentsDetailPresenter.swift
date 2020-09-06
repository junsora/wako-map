//
//  ContentsDetailPresenter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/02.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation

class ContentsDetailPresenter: ContentsDetailPresentation {
    var view: ContentsDetailView?
    var router: ContentsDetailWireframe!
    var contents: MapContents?
    
    func viewDidLoad() {
        view?.showDetail(contents: contents!)
    }
}
