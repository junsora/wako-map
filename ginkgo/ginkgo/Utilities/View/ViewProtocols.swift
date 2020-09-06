//
//  ViewProtocol.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2018/12/31.
//  Copyright © 2018 JSBlueSky. All rights reserved.
//

import UIKit

protocol APICallableView: IndicatableView, NetworkErrorShowableView {}

protocol IndicatableView: class {
    func showActivityIndicator()
    func hideActivityIndicator()
}

extension IndicatableView where Self: UIViewController {
    
    func showActivityIndicator() {
        // インジケータを表示する処理
    }
    
    func hideActivityIndicator() {
        // インジケータを隠す処理
    }
}

protocol TabBarInterface {
    func configuredViewController() -> UIViewController
}

extension UIView {
    
    func getViewSize() -> CGSize {
        let width: Double = Double(UIScreen.main.bounds.width * 0.8)
        return CGSize(width: width, height: 50)
    }
    
    func getViewPoint(yPropotion: Double) -> CGPoint {
        let x = Double((UIScreen.main.bounds.width - (UIScreen.main.bounds.width * 0.8))) / 2
        let y = (Double(UIScreen.main.bounds.height) * yPropotion) - 100
        return CGPoint(x: x, y: y)
    }
}

protocol NetworkErrorShowableView: class {
    func presentNetworkErrorAlert()
}

extension NetworkErrorShowableView where Self: UIViewController {
    
    func presentNetworkErrorAlert() {
        /**
        UIAlertController.showOkAlert( // UIAlertControllerのExtensionでこんなのを作っています
            vc      : self,
            title   : "ネットワークエラー",
            message : "接続状態を確認してください"
        )
         */
    }
}
