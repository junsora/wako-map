//
//  LoginContract.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/01.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

 // ViewControllerが実装
protocol LoginView: APICallableView {
    var presenter: LoginPresentation! { get set }
    var pressTouchDisplayButton: UIButton! { get set }
    // Presenterから呼ばれる
    // ビューの更新
    func showPressTouchDisplay()
}
 
 // Presenterが実装
 protocol LoginPresentation: class {
    var view: LoginView? { get set }
    var interactor: LoginUseCase! { get set }
    var router: LoginWireframe! { get set }
 
    // Viewから呼ばれる
    // Viewで起きたイベントを通知
    func viewDidLoad()
    func didTouchDisplay()
}
 
// Presenterが実装
protocol LoginInteractorOutput: class {
    // Interactorから呼ばれる
    // Interactorがデータの取得に成功/失敗したことの通知
    func signedIn()
    func signedOut()
}
 
// Interactorが実装
protocol LoginUseCase: class {
    var output: LoginInteractorOutput! { get set }
    
    // Presenterから呼ばれる
    // APIやDBなどからのデータ取得
    func coginitoLogin()
    
    func signupCognito(nickName: String)
}

// Routerが実装
protocol LoginWireframe: class {
    var viewController: UIViewController? { get set }
    
    // 画面遷移の際、遷移元のRouterから呼ばれる
    static func assembleModule() -> UIViewController
    
    // Presenterから呼ばれる
    // 画面遷移
    func presentMap()
}

