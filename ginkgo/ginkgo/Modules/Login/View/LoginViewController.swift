//
//  ViewController.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2018/12/31.
//  Copyright © 2018 JSBlueSky. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController, LoginView {
    
    var presenter: LoginPresentation!
    let disposeBag = DisposeBag()

    var pressTouchDisplayButton: UIButton!
    var userIdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.presenter.viewDidLoad()
    }
    
    fileprivate func setupView() {
        self.view.backgroundColor = UIColor.white
        self.createPressTouchView()
    }
    
    func showPressTouchDisplay() {
        self.pressTouchDisplayButton.isHidden = false
    }
    
    func showActivityIndicator() {
        //
    }
    
    func hideActivityIndicator() {
        //
    }
    
    func presentNetworkErrorAlert() {
        //
    }

    fileprivate func createPressTouchView() {
        self.pressTouchDisplayButton = UIButton(type: UIButton.ButtonType.system)
        self.pressTouchDisplayButton.bounds = UIScreen.main.bounds
        self.pressTouchDisplayButton.center = self.view.center
        self.pressTouchDisplayButton.rx.tap.subscribe { [unowned self] _ in
            // CognitoGuestLogin or Login
            self.presenter.didTouchDisplay()
            }
            .disposed(by: disposeBag)
        self.pressTouchDisplayButton.backgroundColor = UIColor.clear
        self.pressTouchDisplayButton.setTitle(NSLocalizedString("PressTouchDisplay", comment: ""), for: UIControlState.normal)
        self.pressTouchDisplayButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        self.pressTouchDisplayButton.titleLabel?.font = UIFont(name: "HiraKakuProN-W3", size: 24)
        self.view.addSubview(pressTouchDisplayButton)
        
        self.userIdLabel = UILabel()
        self.userIdLabel.textColor = UIColor.black
        self.userIdLabel.font = UIFont(name: "HiraKakuProN-W3", size: 24)
        self.userIdLabel.sizeToFit()
        self.pressTouchDisplayButton.addSubview(userIdLabel)
    }
}
