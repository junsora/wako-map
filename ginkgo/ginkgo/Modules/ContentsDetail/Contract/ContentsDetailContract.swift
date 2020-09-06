//
//  ContentsDetailContract.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/01.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

protocol ContentsDetailView: APICallableView {
    var presenter: ContentsDetailPresentation! { get set }
    
    func showDetail(contents: MapContents)
}

protocol ContentsDetailPresentation: class {
    var view: ContentsDetailView? { get set }
    var router: ContentsDetailWireframe! { get set }
    var contents: MapContents? { get set }
    
    func viewDidLoad()
}

protocol ContentsDetailWireframe: class {
    
    var viewController: UIViewController? { get set }
    
    // Presenterから呼ばれる
    static func assembleModule(_ contents: MapContents) -> UIViewController

    // 画面遷移
    func popContentsDetail()
    
}

