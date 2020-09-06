//
//  Shopping.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/28.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation
import MapKit

class ShoppingAnnotation: MKPointAnnotation, AnnotationBaseModel {
    
    var id: Int = 0
    
    var clusteringIdentifier = "Shopping"
    // イメージ
    var glyphImage: UIImage = R.image.shopping() ?? UIImage()
    // カラー
    var markerTintColor: UIColor = UIColor.red
    
    var displayPriority: MKFeatureDisplayPriority = MKFeatureDisplayPriority.defaultLow
    
    init(id: Int) {
        self.id = id
        super.init()
    }
}
