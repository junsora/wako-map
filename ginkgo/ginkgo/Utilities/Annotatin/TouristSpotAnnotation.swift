//
//  TouristSpotAnnotations.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/28.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation
import MapKit

class TouristSpotAnnotation: MKPointAnnotation, AnnotationBaseModel {
    
    var id: Int
    
    var clusteringIdentifier = "Tourist"
    // イメージ
    var glyphImage: UIImage = R.image.touristSpot() ?? UIImage()
    // カラー
    var markerTintColor: UIColor = UIColor.yellow
    
    var displayPriority: MKFeatureDisplayPriority = MKFeatureDisplayPriority.defaultLow
    
    init(id: Int) {
        self.id = id
        super.init()
    }
}

