//
//  MainTabContract.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/08.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

protocol MainTabView: APICallableView {
    var presenter: MainTabPresenter! { get set }
}

protocol MainTabPresentation: class {
    var view: MainTabView? { get set }
    var router: MainTabRouter! { get set }
    
    func viewDidLoad()
}

protocol MainTabWireframe: class {
    var viewController: UIViewController? { get set }
        
    static func assembleModule(_ wireFrames:TabBarInterface...) -> UIViewController
}
