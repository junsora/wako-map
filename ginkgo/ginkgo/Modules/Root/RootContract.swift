//
//  RootContract.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2018/12/31.
//  Copyright © 2018 JSBlueSky. All rights reserved.
//

import UIKit
 
// Routerが実装
protocol RootWireframe: class {
    func presentFirstScreen(in window: UIWindow)
}
