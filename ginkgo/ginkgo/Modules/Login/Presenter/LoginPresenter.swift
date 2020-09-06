//
//  LoginPresenter.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/03.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

import AWSMobileClient

class LoginPresenter: LoginPresentation {
    var view: LoginView?
    var interactor: LoginUseCase!
    var router: LoginWireframe!
    
    func viewDidLoad() {
        self.interactor.coginitoLogin()
    }
    
    func didTouchDisplay() {
        self.router.presentMap()
    }
}

extension LoginPresenter: LoginInteractorOutput {
    func signedIn() {
        // すでにサインイン済みなので、ログイン無しで使用できるようにする
        DispatchQueue.main.async {
            self.view?.showPressTouchDisplay()
        }
    }
    
    func signedOut() {
    }
}
