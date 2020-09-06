//
//  File.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/20.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit
import MapKit

class MapPresenter: MapPresentation {
    var view: MapView?
    var interactor: MapUseCase!
    var router: MapWireframe!
    
    var mapContents: [MapContents] = [] {
        didSet {
            if mapContents.count > 0 {
                view?.showContens(mapContents)
            }
        }
    }
    
    func viewDidLoad() {
        // prepare Map view
        // set center to wakoshi station
        interactor.fetchContentsList()
    }
    
    func didSelectContents(_ contentsId: Int) {
        interactor.fetchContentsDetail(contentsId)
    }
}

extension MapPresenter: MapInteractorOutput {
    func fetchedContentsList(_ mapContents: [MapContents]) {
        self.mapContents = mapContents
    }
    
    func fetchedFailedContentsList() {
        print("failed fetched contentsList")
    }
    
    func fetchedContentsDetail(_ contents: MapContents) {
        router.pushContentsDetail(contents)
    }
    
    func fetchedFailedContentsDetail() {
         print("failed fetched contentsDetail")
    }
    
    
}
