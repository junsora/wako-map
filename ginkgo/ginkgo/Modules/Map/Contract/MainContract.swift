//
//  MapContracter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/08.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

protocol MapView: APICallableView {
    var presenter: MapPresentation! { get set }
    
}

protocol MapPresentation: class {
    var view: MapView? { get set }
    var interactor: MapUseCase! { get set }
    var router: MapWireframe! { get set }
    
    func viewDidLoad()
    func didSelectContents(/** ContentsDetail */)
}

protocol MapInteractorOutput: class {
    func fetchedContentsList()
    func fetchedFailedContentsList()
    func fetchedContentsDetail()
    func fetchedFailedContentsDetail()
}

protocol MapUseCase: class {
    var output: MapInteractorOutput! { get set }
    
    func fetchContentsList()
    func fetchContentsDetail()
}

protocol MapWireframe: class {
    var viewController: UIViewController? { get set }
    
    // 画面遷移の際、遷移元のRouterから呼ばれる
    static func assembleModule() -> UIViewController
    
    // Presenterから呼ばれる
    // 画面遷移
    func presentContentsDetail()

}
