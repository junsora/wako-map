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
    
    func showContens(_ mapContents: [MapContents])
}

protocol MapPresentation: class {
    var view: MapView? { get set }
    var interactor: MapUseCase! { get set }
    var router: MapWireframe! { get set }
    
    func viewDidLoad()
    func didSelectContents(_ contentsId: Int)
}

protocol MapInteractorOutput: class {
    func fetchedContentsList(_ mapContents: [MapContents])
    func fetchedFailedContentsList()
    func fetchedContentsDetail(_ contents: MapContents)
    func fetchedFailedContentsDetail()
}

protocol MapUseCase: class {
    var output: MapInteractorOutput! { get set }
    
    func fetchContentsList()
    func fetchContentsDetail(_ id: Int)
}

protocol MapWireframe: class, TabBarInterface {
    var viewController: UIViewController? { get set }
        
    // Presenterから呼ばれる
    // 画面遷移
    func pushContentsDetail(_ mapContents: MapContents)

}
