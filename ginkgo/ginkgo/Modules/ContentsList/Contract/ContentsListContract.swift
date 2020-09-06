//
//  ContentsListContract.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/16.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

protocol ContentsListView: APICallableView {
    var presenter: ContentsListPresentation! { get set }
    
    func showNoContentsScreen()
    
    func showContents(_ contents: [MapContents])
}

protocol ContentsListPresentation: class {
    var view: ContentsListView? { get set }
    var interactor: ContentsListUseCase! { get set }
    var router: ContentsListWireframe! { get set }
    
    func viewDidLoad()
    func didSelectContents(_ contentsId: Int)
}

protocol ContentsListInteractorOutput: class {
    func fetchedContentsList(_ mapContents: [MapContents])
    func fetchedFailedContentsList()
    func fetchedContentsDetail(_ contents: MapContents)
    func fetchedFailedContentsDetail()
}

protocol ContentsListUseCase: class {
    var output: ContentsListInteractorOutput! { get set }
    
    func fetchContentsList()
    func fetchContentsDetail(_ id: Int)

}

protocol ContentsListWireframe: class, TabBarInterface {
    var viewController: UIViewController? { get set }
    
    // Presenterから呼ばれる
    // 画面遷移
    func pushContentsDetail(_ mapContents: MapContents)

}
