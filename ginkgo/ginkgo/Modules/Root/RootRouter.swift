//
//  RootRouter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2018/12/31.
//  Copyright © 2018 JSBlueSky. All rights reserved.
//

import UIKit

class RootRouter: RootWireframe {    
    func presentFirstScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        // TODO Login画面か、それ以降の画面か切り替える        
        window.rootViewController = LoginRouter.assembleModule()
    }
}
