//
//  ContentsListPresenter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/16.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class ContentsListPresenter: ContentsListPresentation {
    var view: ContentsListView?
    var interactor: ContentsListUseCase!
    var router: ContentsListWireframe!
    
    func viewDidLoad() {
        // prepare Map view
        // set center to wakoshi station
        interactor.fetchContentsList()
    }
    
    func didSelectContents(_ contentsId: Int) {
        interactor.fetchContentsDetail(contentsId)
    }
}

