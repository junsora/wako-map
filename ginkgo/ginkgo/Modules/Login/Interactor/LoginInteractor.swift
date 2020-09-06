//
//  LoginInteractor.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/01.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

import AWSMobileClient
import AWSCore

class LoginInteractor: LoginUseCase {
    weak var output: LoginInteractorOutput!
    
    func coginitoLogin() {
        // 以下を追加
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let userState = userState {
                switch(userState){
                case .signedIn:
                    // サインイン済み
                    self.output?.signedIn()
                case .signedOut:
                    // サインアウト中 -> ログイン画面へ
                    self.output?.signedOut()
                default:
                    // それ以外のステータスはサインアウト
                    AWSMobileClient.sharedInstance().signOut()
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    func signupCognito(nickName: String) {
        AWSMobileClient.sharedInstance().initialize{ (userState, error) in
            
        }
        print(AWSMobileClient.sharedInstance().currentUserState)
        
    }
    
}
